#include "Pass2.h"
#include<bits/stdc++.h>
#include<SourceProgram.h>
#include<SourceLine.h>
#include<OpCodeTable.h>
#include<SyntaxValidator.h>
#include<AssemblyListing.h>
#include<SymbolTable.h>
#include<ValidatorUtilities.h>
#include<UpdateLocationCounter.h>
#include <ObjectCodeGenerator.h>
#include "ObjectProgram.h"
/**
by Mohamed Esmail
*/

const int Pass2::NO_ERROR = 0;
const int Pass2::PASS1_ERROR = 1;
const int Pass2::PASS2_ERROR = 2;
const int Pass2::MAX_TEXT_RECORED_LENGTH = 60;
Pass2::Pass2(vector<SourceLine> sourceLinesArr)
{
   this->sourceLinesArr = sourceLinesArr;
   ///loop until start
   int i = 0;
   while(sourceLinesArr[i].getOperation() != "START"){
        i++;
   }
   int startAdd ;
   if(i < sourceLinesArr.size()){
        startAdd = sourceLinesArr[i].getLocationCounter();
   }else{
        startAdd = 0;
   }
   SourceLine last = sourceLinesArr[sourceLinesArr.size()-1];
   if(last.getOperation() == "END"){
       this->lengthOfProg = last.getLocationCounter() - startAdd;
   }else{
       this->lengthOfProg = last.getNextInstruction() - startAdd;
   }
   this->objCodeGenerator = ObjectCodeGenerator::getObjectCodeGenerator();
}

void Pass2::generateObjProg(){
    writeInFileHeaders();
    linesCounter = 0;
    SourceLine currentLine = sourceLinesArr[linesCounter];
    SourceLine prevLine = sourceLinesArr[linesCounter];
    ///loop until reach start
    while(currentLine.getOperation() !="START" && currentLine.getOperation() == ""){
        writeInFile(currentLine,"",Pass2::NO_ERROR);
        prevLine = currentLine;
        currentLine = sourceLinesArr[++linesCounter];
    }
    if(currentLine.getOperation() == "START"){

        writeInFile(currentLine, "", Pass2::NO_ERROR);
        string lengthOfProgHex = convertToHEX(lengthOfProg);
        string startAdd;
        if(currentLine.getIsValid()){
            startAdd = convertToHEX(currentLine.getLocationCounter());
        } else {
            startAdd = convertToHEX(0);
        }
        objectProgram.writeHeader(currentLine.getLable(),startAdd,lengthOfProgHex);
        linesCounter++;
    }


    currentLine = sourceLinesArr[linesCounter];
    int FirstInsAdd = currentLine.getLocationCounter();
    TextStartAddress = convertToHEX(currentLine.getLocationCounter());
    TextRecord = "";

    vector <string> modificationAddress;
    vector <string> modificationLength;
    ///what should i do if there isn't end?
    while(currentLine.getOperation() != "END" && linesCounter < sourceLinesArr.size()-1){
        if(currentLine.getIsValid() && currentLine.getHasObjCode() && currentLine.getOperation() != ""){
           string opCode = objCodeGenerator->getObjectCode(&currentLine);
           if(opCode != ObjectCodeGenerator::SOME_THING_WRONG){
               if(prevLine.getNextInstruction() != currentLine.getLocationCounter()){
                    objectProgram.writeText(TextStartAddress,convertToHEX(TextRecord.length()/2),TextRecord);
                    TextRecord = opCode;
                    TextStartAddress = convertToHEX(currentLine.getLocationCounter());
               }else if(TextRecord.length() + opCode.length() <= MAX_TEXT_RECORED_LENGTH){
                    TextRecord = TextRecord + opCode;
               }else{
                  objectProgram.writeText(TextStartAddress,convertToHEX(TextRecord.length()/2),TextRecord);
                  TextRecord = opCode;
                  TextStartAddress = convertToHEX(currentLine.getLocationCounter());
               }
               if(currentLine.getOperation()[0] == '+' && currentLine.getOperand()[0] != '#'){
                    modificationAddress.push_back(convertToHEX(currentLine.getLocationCounter()+1));
                    modificationLength.push_back(std::to_string(5));
               }
               writeInFile(currentLine, opCode, Pass2::NO_ERROR);
               prevLine = currentLine;
           }else{
               writeInFile(currentLine, "", Pass2::PASS2_ERROR);
           }
        }else if(currentLine.getOperation() == "BASE" && currentLine.getIsValid()){
            objCodeGenerator->setBaseStatus(true);
            objCodeGenerator->setCurrentBaseAddress(currentLine.getOperand());
            writeInFile(currentLine, "", Pass2::NO_ERROR);
        }else if(currentLine.getOperation() == "NOBASE" && currentLine.getIsValid()){
            objCodeGenerator->setBaseStatus(false);
            writeInFile(currentLine, "", Pass2::NO_ERROR);
        }else{
            if(!currentLine.getIsValid()){
                writeInFile(currentLine, "", Pass2::PASS1_ERROR);
            }else{
                writeInFile(currentLine, "", Pass2::NO_ERROR);
            }
        }
        currentLine = sourceLinesArr[++linesCounter];
    }
    /// loop on literal after end.
    SourceLine endSourceLine;
    if(linesCounter < sourceLinesArr.size()-1){
            /// sure this is end and what if there is an error in end?
        endSourceLine = currentLine;
        prevLine = currentLine;
        prevLine.setNextInstruction(prevLine.getLocationCounter());
        SymbolTable* symTable = SymbolTable::getSymbolTable();
        SymbolInfo symInfo = symTable->search(endSourceLine.getOperand());
        if(currentLine.getIsValid() && symInfo.getLocation() != -1 && endSourceLine.getOperand() != ""){
            writeInFile(endSourceLine,"",Pass2::NO_ERROR);
        }else if(!currentLine.getIsValid()){
            writeInFile(endSourceLine,"",Pass2::PASS1_ERROR);
        }else if(symInfo.getLocation() != -1 && endSourceLine.getOperand() != ""){
            endSourceLine.setErrorMessage("The symbol in the operand is not found");
            writeInFile(endSourceLine,"",Pass2::PASS2_ERROR);
        }else if(endSourceLine.getOperand() == ""){
            writeInFile(endSourceLine,"",Pass2::NO_ERROR);
        }
    }else{
        ///what if there is an error in end?
        if(currentLine.getOperation() == "END"){
            endSourceLine = currentLine;
            prevLine = currentLine;
            prevLine.setNextInstruction(prevLine.getLocationCounter());

            SymbolTable* symTable = SymbolTable::getSymbolTable();
            SymbolInfo symInfo = symTable->search(endSourceLine.getOperand());
            if(currentLine.getIsValid() && symInfo.getLocation() != -1 && endSourceLine.getOperand() != ""){
                writeInFile(endSourceLine,"",Pass2::NO_ERROR);
            }else if(!currentLine.getIsValid()){
                writeInFile(endSourceLine,"",Pass2::PASS1_ERROR);
            }else if(symInfo.getLocation() != -1 && endSourceLine.getOperand() != ""){
                endSourceLine.setErrorMessage("The symbol in the operand is not found");
                writeInFile(endSourceLine,"",Pass2::PASS2_ERROR);
            }else if(endSourceLine.getOperand() == ""){
                writeInFile(endSourceLine,"",Pass2::NO_ERROR);
            }
            ///what if pass2 error in operand?
        }else{
            /// what should I do if there isn't end?
        }
    }
    linesCounter++;
    while(linesCounter < sourceLinesArr.size()){
        prevLine = currentLine;
        currentLine = sourceLinesArr[linesCounter++];
        if(currentLine.getIsValid() && currentLine.getHasObjCode() && currentLine.getOperation() != ""){
           string opCode = objCodeGenerator->getObjectCode(&currentLine);
           if(opCode != ObjectCodeGenerator::SOME_THING_WRONG){
               if(prevLine.getNextInstruction() != currentLine.getLocationCounter()){
                    objectProgram.writeText(TextStartAddress,convertToHEX(TextRecord.length()/2),TextRecord);
                    TextRecord = opCode;
                    TextStartAddress = convertToHEX(currentLine.getLocationCounter());
               }else if(TextRecord.length() + opCode.length() <= MAX_TEXT_RECORED_LENGTH){
                    TextRecord = TextRecord + opCode;
               }else{
                  objectProgram.writeText(TextStartAddress,convertToHEX(TextRecord.length()/2),TextRecord);
                  TextRecord = opCode;
                  TextStartAddress = convertToHEX(currentLine.getLocationCounter());
               }
               if(currentLine.getOperation()[0] == '+' && currentLine.getOperand()[0] != '#'){
                    modificationAddress.push_back(convertToHEX(currentLine.getLocationCounter()+1));
                    modificationLength.push_back(std::to_string(5));
               }
               writeInFile(currentLine, opCode, Pass2::NO_ERROR);
               prevLine = currentLine;
           }else{
               writeInFile(currentLine, "", Pass2::PASS2_ERROR);
           }
        }else if(currentLine.getOperation() == "BASE" && currentLine.getIsValid()){
            objCodeGenerator->setBaseStatus(true);
            objCodeGenerator->setCurrentBaseAddress(currentLine.getOperand());
            writeInFile(currentLine, "", Pass2::NO_ERROR);
        }else if(currentLine.getOperation() == "NOBASE" && currentLine.getIsValid()){
            objCodeGenerator->setBaseStatus(false);
            writeInFile(currentLine, "", Pass2::NO_ERROR);
        }else{
            if(!currentLine.getIsValid()){
                writeInFile(currentLine, "", Pass2::PASS1_ERROR);
            }else{
                writeInFile(currentLine, "", Pass2::NO_ERROR);
            }
        }
       /* string opCode = objCodeGenerator->getObjectCode(&currentLine);
        if(opCode != ObjectCodeGenerator::SOME_THING_WRONG){
           if(TextRecord.length() + opCode.length() <= MAX_TEXT_RECORED_LENGTH){
                TextRecord = TextRecord + opCode;
           }else{
              objectProgram.writeText(TextStartAddress,convertToHEX(TextRecord.length()/2),TextRecord);
              TextRecord = opCode;
              TextStartAddress = convertToHEX(currentLine.getLocationCounter());
           }
           writeInFile(currentLine, opCode, Pass2::NO_ERROR);
       }else{
           writeInFile(currentLine, "", Pass2::PASS2_ERROR);
       }*/
    }
    /// write last record
    objectProgram.writeText(TextStartAddress,convertToHEX(TextRecord.length()/2),TextRecord);
    for(int i = 0; i < modificationAddress.size(); i++){
        objectProgram.writeModification(modificationAddress[i],modificationLength[i]);
    }
    /// what will happen when no END?
    if(endSourceLine.getOperand() == "" || !endSourceLine.getIsValid()){
        objectProgram.writeEnd(convertToHEX(FirstInsAdd));
    }else{
        SymbolTable* symTable = SymbolTable::getSymbolTable();
        SymbolInfo symInfo = symTable->search(endSourceLine.getOperand());
        ///should I check if it is a relative or if it is expression?
        if(symInfo.getLocation() != -1){
            objectProgram.writeEnd(convertToHEX(symInfo.getLocation()));
        }else{
            objectProgram.writeEnd(convertToHEX(FirstInsAdd));
        }
    }
}
string Pass2::convertToHEX(int num){
    std::stringstream stream;
    stream << std::hex << num;
    return stream.str();
}
void Pass2::writeInFileHeaders(){
    ofstream out("ListingFile2.txt",ios::out);
    std:: string line("Line    Loc            Source statement                      Object Code   \n");
    out << line;
    out.close();
}
void Pass2::writeInFile(SourceLine sourceLine, string opCode, int error){
    std:: string line("");
    std:: string counterSring;
    counterSring = std::to_string(linesCounter);
    int i;
    for(i = 0; i < 3-counterSring.length();i++){
        line = line +" ";
    }
    line = line + counterSring + "     ";



    if(sourceLine.getOperation() == ""){
        line = line +"         "+sourceLine.getComment()+"\n";
        //cout<<sourceLine.getComment()<<endl;
    } else {
        string zeros ="";
        string locationCounter = convertToHEX(sourceLine.getLocationCounter());
        if(locationCounter.length()<5)
        for(i = 0; i < 5 -locationCounter.length(); i++){
            zeros = zeros + "0";
        }
        locationCounter = zeros + locationCounter;
        line = line +locationCounter + "    "+sourceLine.getLable();
        for(i = 0; i < 10-sourceLine.getLable().length() && sourceLine.getLable().length() < 10;i++){
            line = line +" ";
        }

        line = line + sourceLine.getOperation();
        for(i = 0; i < 10-sourceLine.getOperation().length() && sourceLine.getOperation().length() < 10;i++){
            line = line +" ";
        }
        line = line + sourceLine.getOperand();
        for(i = 0; i < 20-sourceLine.getOperand().length() && sourceLine.getOperand().length() < 20;i++){
            line = line +" ";
        }
        line = line+ "     ";

        for(i = 0; i < 20 - opCode.length() && opCode.length() < 20; i++){
            opCode =opCode+" ";
        }

        line = line +opCode +sourceLine.getComment()+"\n";



      //  cout<<sourceLine.getLable()<<"  "<<sourceLine.getOperation()<<" "<<sourceLine.getOperand()<<"   "<<sourceLine.getComment()<<"   "<<locationCounter<<endl;
        if(error == 1){
            line = line +"       ****Error1:"+ sourceLine.getErrorMessage() +"\n";
            //cout<<error<<endl;
        }else if(error == 2){
            line = line +"       ****Error2:"+ sourceLine.getErrorMessage() +"\n";
        }
    }
    ofstream out("ListingFile2.txt",ios::out | ios::app);
    out << line;
    out.close();
}

