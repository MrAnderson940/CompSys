#include <string>

#include "VMTranslator.h"

using namespace std;

/**
 * VMTranslator constructor
 */
VMTranslator::VMTranslator() {
    // Your code here
}

/**
 * VMTranslator destructor
 */
VMTranslator::~VMTranslator() {
    // Your code here
}

/** Generate Hack Assembly code for a VM push operation */
string VMTranslator::vm_push(string segment, int offset){
    string output, reggester;
    string offs = to_string(offset);

    if (segment ==  "static"){
        reggester = to_string(16+offset);
    
    } else if (segment == "pointer"){
        reggester = "R" + to_string(3+offset);
        
    } else if (segment == "this"){
        reggester = "THIS";
    
    } else if (segment == "that"){
        reggester = "THAT";
        
    } else if (segment == "argument"){
        reggester = "ARG";
        
    } else if (segment == "local"){
        reggester = "LCL";
        
    } else if (segment == "temp"){
        reggester = "R" + to_string(5+offset);
        
    } else if (segment == "constant"){
        reggester = to_string(offset);
        
    } else {
        return "";
    }

    if (segment == "static" || segment == "pointer" || segment == "constant" || segment == "temp"){
        output.append("@" + reggester + "\n");
        output.append("push " + segment + " " + offs + "\n");
        if (segment == "constant"){
            output.append("D=A\n");
        } else {
            output.append("D=M\n");
        }
    } else if (segment == "this" || segment == "that" || segment == "argument" || segment == "local"){
        output.append("@" + reggester + "\n");
        output.append("D=M\n");
        output.append("@" + offs + "\n");
        output.append("A=D+A\n");
        output.append("D=M\n");
    }

    output.append("@SP\n");
    output.append("A=M\n");
    output.append("M=D\n");
    output.append("@SP\n");
    output.append("M=M+1\n");
    
    return output;
}

/** Generate Hack Assembly code for a VM pop operation */
string VMTranslator::vm_pop(string segment, int offset){    
    string output, reggester;
    string offs = to_string(offset);

    if (segment ==  "static"){
        reggester = to_string(16+offset);
    
    } else if (segment == "pointer"){
        reggester = "R" + to_string(3+offset);
        
    } else if (segment == "this"){
        reggester = "THIS";
    
    } else if (segment == "that"){
        reggester = "THAT";
        
    } else if (segment == "argument"){
        reggester = "ARG";
        
    } else if (segment == "local"){
        reggester = "LCL";
        
    } else if (segment == "temp"){
        reggester = "R" + to_string(5+offset);
        
    } else if (segment == "constant"){
        reggester = to_string(offset);
        
    } else {
        return "";
    }
    
    output.append("@" + reggester + "\n");

    if (segment == "static" || segment == "pointer" || segment == "temp"){
        output.append("D=A\n");
    } else if (segment == "this" || segment == "that" || segment == "argument" || segment == "local"){
        output.append("D=M\n");
        output.append("@" + offs + "\n");
        output.append("D=D+A\n");
    }

    output.append("@R13\n");
    output.append("M=D\n");
    output.append("@SP\n");
    output.append("AM=M-1\n");
    output.append("D=M\n");
    output.append("@R13\n");
    output.append("A=M\n");
    output.append("M=D\n");

    return output;
}

/** Generate Hack Assembly code for a VM add operation */
string VMTranslator::vm_add(){
    string output;

    output.append("@SP\n");
    output.append("M=D\n");
    output.append("A=A-1\n");
    output.append("M=D+M\n");

    return output;    
}

/** Generate Hack Assembly code for a VM sub operation */
string VMTranslator::vm_sub(){
    return "";
}

/** Generate Hack Assembly code for a VM neg operation */
string VMTranslator::vm_neg(){
    return "";
}

/** Generate Hack Assembly code for a VM eq operation */
string VMTranslator::vm_eq(){
    string output;

    output.append("@SP\n");
    output.append("AM=M-1\n");
    output.append("D=M\n");
    output.append("A=A-1\n");
    output.append("D=D-M\n");
    output.append("@true\n");
    output.append("D;JEQ\n");
    output.append("@SP\n");
    output.append("A=A-1\n");
    output.append("M=0\n");
    output.append("@false");
    output.append("0;JMP\n");
    output.append("(true)\n");
    output.append("@SP\n");
    output.append("A=A-1\n");
    output.append("M=-1\n");
    output.append("(false)\n");

    return output;
}   

/** Generate Hack Assembly code for a VM gt operation */
string VMTranslator::vm_gt(){
    string output;

    output.append("@SP\n");
    output.append("AM=M-1\n");
    output.append("D=M\n");
    output.append("A=A-1\n");
    output.append("D=D-M\n");
    output.append("@true\n");
    output.append("D;JGT\n");
    output.append("@SP\n");
    output.append("A=A-1\n");
    output.append("M=0\n");
    output.append("@false");
    output.append("0;JMP\n");
    output.append("(true)\n");
    output.append("@SP\n");
    output.append("A=A-1\n");
    output.append("M=-1\n");
    output.append("(false)\n");

    return output;
}

/** Generate Hack Assembly code for a VM lt operation */
string VMTranslator::vm_lt(){
    return "";
}

/** Generate Hack Assembly code for a VM and operation */
string VMTranslator::vm_and(){
    return "";
}

/** Generate Hack Assembly code for a VM or operation */
string VMTranslator::vm_or(){
    return "";
}

/** Generate Hack Assembly code for a VM not operation */
string VMTranslator::vm_not(){
    return "";
}

/** Generate Hack Assembly code for a VM label operation */
string VMTranslator::vm_label(string label){
    string output = "(" + label + ")\n";
    return output;
}

/** Generate Hack Assembly code for a VM goto operation */
string VMTranslator::vm_goto(string label){
    string output;
    output.append("@" + label + "\n");
    output.append("0;JMP\n");

    return output;
}

/** Generate Hack Assembly code for a VM if-goto operation */
string VMTranslator::vm_if(string label){
    string output;

    output.append("@SP\n");
    output.append("AM=M-1\n");
    output.append("D=M\n");
    output.append("@" + label + "\n");
    output.append("D;JNE\n");

    return output;
}

/** Generate Hack Assembly code for a VM function operation */
string VMTranslator::vm_function(string function_name, int n_vars){
    return "";
}

/** Generate Hack Assembly code for a VM call operation */
string VMTranslator::vm_call(string function_name, int n_args){
    return "";
}

/** Generate Hack Assembly code for a VM return operation */
string VMTranslator::vm_return(){
    return "";
}