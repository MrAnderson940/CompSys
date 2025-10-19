#include "VMTranslator.h"


/**
 * VMTranslator constructor
 */
VMTranslator::VMTranslator() {
    labels = 0;
}

/**
 * VMTranslator destructor
 */
VMTranslator::~VMTranslator() {
    // Your code here
}

std::string VMTranslator::newLabel(){
    labels++;
    std::string label = std::to_string(labels);
    return label;
}

/** Generate Hack Assembly code for a VM push operation */
std::string VMTranslator::vm_push(std::string segment, int offset){
    std::string output, reggester;
    std::string offs = std::to_string(offset);

    if (segment ==  "static"){
        reggester = std::to_string(16+offset);
    
    } else if (segment == "pointer"){
        reggester = "R" + std::to_string(3+offset);
        
    } else if (segment == "this"){
        reggester = "THIS";
    
    } else if (segment == "that"){
        reggester = "THAT";
        
    } else if (segment == "argument"){
        reggester = "ARG";
        
    } else if (segment == "local"){
        reggester = "LCL";
        
    } else if (segment == "temp"){
        reggester = "R" + std::to_string(5+offset);
        
    } else if (segment == "constant"){
        reggester = std::to_string(offset);
        
    } else {
        return "";
    }

    if (segment == "static" || segment == "pointer" || segment == "constant" || segment == "temp"){
        output.append("@" + reggester + "\n");
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
std::string VMTranslator::vm_pop(std::string segment, int offset){    
    std::string output, reggester;
    std::string offs = std::to_string(offset);

    if (segment ==  "static"){
        reggester = std::to_string(16+offset);
    
    } else if (segment == "pointer"){
        reggester = "R" + std::to_string(3+offset);
        
    } else if (segment == "this"){
        reggester = "THIS";
    
    } else if (segment == "that"){
        reggester = "THAT";
        
    } else if (segment == "argument"){
        reggester = "ARG";
        
    } else if (segment == "local"){
        reggester = "LCL";
        
    } else if (segment == "temp"){
        reggester = "R" + std::to_string(5+offset);
        
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
std::string VMTranslator::vm_add(){
    std::string output;

    output.append("@SP\n");
    output.append("AM=M-1\n");
    output.append("D=M\n");
    output.append("A=A-1\n");
    output.append("M=D+M\n");

    return output;    
}

/** Generate Hack Assembly code for a VM sub operation */
std::string VMTranslator::vm_sub(){
    return "";
}

/** Generate Hack Assembly code for a VM neg operation */
std::string VMTranslator::vm_neg(){
    return "";
}

/** Generate Hack Assembly code for a VM eq operation */
std::string VMTranslator::vm_eq(){
    std::string output, Nlable;
    VMTranslator NL;
    Nlable = NL.newLabel();

    output.append("@SP\n");
    output.append("AM=M-1\n");
    output.append("D=M\n");
    output.append("A=A-1\n");
    output.append("D=M-D\n");
    output.append("@EQ.true_" + Nlable + "\n");
    output.append("D;JEQ\n");
    output.append("@0\n");
    output.append("D=A\n");
    output.append("@SP\n");
    output.append("A=M-1\n");
    output.append("M=D\n");
    output.append("@EQ.comp_" + Nlable + "\n");
    output.append("0;JMP\n");
    output.append("(EQ.true_" + Nlable + ")\n");
    output.append("@0\n");
    output.append("D=A-1\n");
    output.append("@SP\n");
    output.append("A=M-1\n");
    output.append("M=D\n");    
    output.append("(EQ.comp_" + Nlable + ")\n");
    return output;
}   

/** Generate Hack Assembly code for a VM gt operation */
std::string VMTranslator::vm_gt(){
    std::string output, Nlable;
    VMTranslator NL;
    Nlable = NL.newLabel();

    output.append("@SP\n");
    output.append("AM=M-1\n");
    output.append("D=M\n");
    output.append("A=A-1\n");
    output.append("D=M-D\n");
    output.append("@true_" + Nlable + "\n");
    output.append("D;JGT\n");
    output.append("@0\n");
    output.append("D=A\n");
    output.append("@SP\n");
    output.append("A=M-1\n");
    output.append("M=D\n");
    output.append("@comp_" + Nlable + "\n");
    output.append("0;JMP\n");
    output.append("(true" + Nlable + ")\n");
    output.append("@0\n");
    output.append("D=A-1\n");
    output.append("@SP\n");
    output.append("A=M-1\n");
    output.append("M=D\n");    
    output.append("(comp_" + Nlable + ")\n");
    return output;
}

/** Generate Hack Assembly code for a VM lt operation */
std::string VMTranslator::vm_lt(){
    return "";
}

/** Generate Hack Assembly code for a VM and operation */
std::string VMTranslator::vm_and(){
    return "";
}

/** Generate Hack Assembly code for a VM or operation */
std::string VMTranslator::vm_or(){
    return "";
}

/** Generate Hack Assembly code for a VM not operation */
std::string VMTranslator::vm_not(){
    return "";
}

/** Generate Hack Assembly code for a VM label operation */
std::string VMTranslator::vm_label(std::string label){
    std::string output = "(" + label + ")\n";
    return output;
}

/** Generate Hack Assembly code for a VM goto operation */
std::string VMTranslator::vm_goto(std::string label){
    std::string output;
    output.append("@" + label + "\n");
    output.append("0;JMP\n");

    return output;
}

/** Generate Hack Assembly code for a VM if-goto operation */
std::string VMTranslator::vm_if(std::string label){
    std::string output;

    output.append("@SP\n");
    output.append("AM=M-1\n");
    output.append("D=M\n");
    output.append("@" + label + "\n");
    output.append("D;JNE\n");

    return output;
}

/** Generate Hack Assembly code for a VM function operation */
std::string VMTranslator::vm_function(std::string function_name, int n_vars){
    return "";
}

/** Generate Hack Assembly code for a VM call operation */
std::string VMTranslator::vm_call(std::string function_name, int n_args){
    return "";
}

/** Generate Hack Assembly code for a VM return operation */
std::string VMTranslator::vm_return(){
    return "";
}