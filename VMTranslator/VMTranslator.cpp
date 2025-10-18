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
    strtig offs = to_string(offset);

    switch segment {
        case "static":
        reggester = to_string(16+offset);
        break;

        case "pointer":
        reggester = "R" + to_string(3+offset);
        break;

        case "this":
        reggester = "THIS";
        break;

        case "that":
        reggester = "THAT";
        break;

        case "argument":
        reggester = "ARG";
        break;

        case "local":
        reggester = "LCL";
        break;

        case "temp":
        reggester = "R" + to_string(5+offset);
        break;

        case "constant":
        reggester = to_string(offset);
        break;

        default
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

    output.append("@SP\n")
    output.append("A=M\n");
    output.append("M=D\n");
    output.append("@SP\n");
    output.append("M=M+1\n");
    
    return output;
}

/** Generate Hack Assembly code for a VM pop operation */
string VMTranslator::vm_pop(string segment, int offset){    
    string output, reggester;
    strtig offs = to_string(offset);

    switch segment {
        case "static":
        reggester = to_string(16+offset);
        break;

        case "pointer":
        reggester = "R" + to_string(3+offset);
        break;

        case "this":
        reggester = "THIS";
        break;

        case "that":
        reggester = "THAT";
        break;

        case "argument":
        reggester = "ARG";
        break;

        case "local":
        reggester = "LCL";
        break;

        case "temp":
        reggester = "R" + to_string(5+offset);
        break;

        case "constant":
        reggester = to_string(offset);
        break;

        default
        return "";
    }
    
    output.append("@" + reggester + "\n");

    if (segment == "static" || segment == "pointer" || segment == "temp"){
        output.append("D=A\n");
    } else if (segment == "this" || segment == "that" || segment == "argument" || argument == "local"){
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
    return "";
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
    return "";
}

/** Generate Hack Assembly code for a VM gt operation */
string VMTranslator::vm_gt(){
    return "";
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
    return "";
}

/** Generate Hack Assembly code for a VM goto operation */
string VMTranslator::vm_goto(string label){
    return "";
}

/** Generate Hack Assembly code for a VM if-goto operation */
string VMTranslator::vm_if(string label){
    return "";
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