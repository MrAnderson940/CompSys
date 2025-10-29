#include "CompilerParser.h"
#include <iostream>


/**
 * Constructor for the CompilerParser
 * @param tokens A linked list of tokens to be parsed
 */
CompilerParser::CompilerParser(std::list<Token*> tokens) {
    for (Token* t : tokens){
        //std::cout << t->getType() << std::endl;
        tokenList.push_back(t);   
    }
    //for (Token* t : tokenList){
        //std::cout << t->getType() << std::endl;
    //}
    it = tokens.begin();
    itNum = 1;
}

/**
 * Generates a parse tree for a single program
 * @return a ParseTree
 */
ParseTree* CompilerParser::compileProgram() {
    //std::cout << "0" << std::endl;
    if (have("keyword","class")){
        //std::cout << "1" << std::endl;
        next();
        //std::cout << "1a" << std::endl << current()->getType() << std::endl;
        if(current()->getType() == "identifier" || current()->getValue() == "Main" || current()->getValue() == "main"){
            //std::cout << "1b" << std::endl;
            prev();
            //std::cout << "2" << std::endl;
            ParseTree* pro = compileClass();
           // std::cout << "3" << std::endl;
            return pro;
        } else {
            //std::cout << "1c" << std::endl;
            throw ParseException();
            return NULL;
        }
    }
    throw ParseException();
    return NULL;
}

/**
 * Generates a parse tree for a single class
 * @return a ParseTree
 */
ParseTree* CompilerParser::compileClass() {
    ParseTree* nClass = new ParseTree("Class", "");
    nClass->addChild(new ParseTree(current()->getType(), current()->getValue()));
    next();
    nClass->addChild(new ParseTree(current()->getType(), current()->getValue()));
    next();

    if(!have("symbol","{")){
        throw ParseException();
        return NULL;
    }
    nClass->addChild(new ParseTree(current()->getType(), current()->getValue()));
    next();

    while (it != tokenList.end() && !have("symbol", "}")){
        if (have("keyword","function") || have("keyword","method") || have("keyword","constructor")){
            nClass->addChild(compileSubroutine());
        } else if (have("keyword","static") || have("keyword","field")){
            nClass->addChild(compileClassVarDec());
        } else {
            throw ParseException();
            return NULL;
        }
        next();
    }

    if (!have("symbol", "}")){
        throw ParseException();
        return NULL;
    }
    nClass->addChild(new ParseTree(current()->getType(),current()->getValue()));

    return nClass;

}

/**
 * Generates a parse tree for a static variable declaration or field declaration
 * @return a ParseTree
 */
ParseTree* CompilerParser::compileClassVarDec() {
    ParseTree* nClassVarDec = new ParseTree("classVarDoc","");
    nClassVarDec->addChild(new ParseTree(current()->getType(), current()->getValue()));

    next();
    if(!have("keyword","int") && !have("keyword","char") && !have("keyword","boolean") && !(current()->getType() == "identifier")){
        throw ParseException();
        return NULL;
    }
    nClassVarDec->addChild(new ParseTree(current()->getType(), current()->getValue()));
    next();

    while (it != tokenList.end() && have("symbol", ",")){
        nClassVarDec->addChild(new ParseTree(current()->getType(),current()->getValue()));
        next();

        if (current()->getType() != "identifier"){
            throw ParseException();
            return NULL;
        }
        nClassVarDec->addChild(new ParseTree(current()->getType(),current()->getValue()));
        next();
    }

    if (!have("symbol",";")){
        throw ParseException();
        return NULL;
    }
    nClassVarDec->addChild(new ParseTree(current()->getType(),current()->getValue()));

    return nClassVarDec;
}

/**
 * Generates a parse tree for a method, function, or constructor
 * @return a ParseTree
 */
ParseTree* CompilerParser::compileSubroutine() {
    ParseTree* nSubrutine = new ParseTree("subrutine","");
    nSubrutine->addChild(new ParseTree(current()->getType(),current()->getValue()));
    next();

    if (current()->getType() != "keyword" && current()->getType() != "identifier"){
        throw ParseException();
        return NULL;
    }
    nSubrutine->addChild(new ParseTree(current()->getType(),current()->getValue()));
    next();

    if (current()->getType() != "identifier"){
        throw ParseException();
        return NULL;
    }
    nSubrutine->addChild(new ParseTree(current()->getType(),current()->getValue()));
    next();

    if (!have("symbol","(")){
        throw ParseException();
        return NULL;
    }
    nSubrutine->addChild(new ParseTree(current()->getType(),current()->getValue()));
    next();

    if (!have("symbol",")")){
        nSubrutine->addChild(compileParameterList());
    }

    if (!have("symbol",")")){
        throw ParseException();
        return NULL;
    }
    nSubrutine->addChild(new ParseTree(current()->getType(),current()->getValue()));
    next();

    if (!have("symbol","{")){
        throw ParseException();
        return NULL;
    }
    nSubrutine->addChild(compileSubroutineBody());

    return nSubrutine;
}

/**
 * Generates a parse tree for a subroutine's parameters
 * @return a ParseTree
 */
ParseTree* CompilerParser::compileParameterList() {
    ParseTree* nParameterList = new ParseTree("parameterList","");
    if (!have("keyword","int") && !have("keyword","char") && !have("keyword","boolean") && !(current()->getType() == "identifier")){
        throw ParseException();
        return NULL;
    } else if (current()->getType() != "identifier") {
        nParameterList->addChild(new ParseTree(current()->getType(),current()->getValue()));
        next();
    }

    if (current()->getType() != "identifier"){
        throw ParseException();
        return NULL;
    }
    nParameterList->addChild(new ParseTree(current()->getType(),current()->getValue()));
    next();

    if (!have("symbol",",")){
        return nParameterList;
    }
    nParameterList->addChild(new ParseTree(current()->getType(),current()->getValue()));
    next();

    while (it != tokenList.end() && !have("symbol",")")){
        if (!have("keyword","int") && !have("keyword","char") && !have("keyword","boolean") && !(current()->getType() == "identifier")){
            throw ParseException();
            return NULL;
        } else if (current()->getType() != "identifier") {
            nParameterList->addChild(new ParseTree(current()->getType(),current()->getValue()));
            next();
        }

        if (current()->getType() != "identifier"){
            throw ParseException();
            return NULL;
        }
        nParameterList->addChild(new ParseTree(current()->getType(),current()->getValue()));
        next();

        if (have("symbol",",")){
            nParameterList->addChild(new ParseTree(current()->getType(),current()->getValue()));
            next();
            if (have("symbol",")")){
                throw ParseException();
            }
        }
    }

    return nParameterList;
}

/**
 * Generates a parse tree for a subroutine's body
 * @return a ParseTree
 */
ParseTree* CompilerParser::compileSubroutineBody() {
    ParseTree* nSubrutineBody = new ParseTree("subrutineBody","");
    nSubrutineBody->addChild(new ParseTree(current()->getType(),current()->getValue()));
    next();

    while (it != tokenList.end() && !have("symbol","}")){
        if (have("keyword", "var")){
            nSubrutineBody->addChild(compileVarDec());
            next();
        } else {
            nSubrutineBody->addChild(compileStatements());
        }
    }

    if(!have("symbol","}")){
        throw ParseException();
        return NULL;
    }
    nSubrutineBody->addChild(new ParseTree(current()->getType(),current()->getValue()));
    return nSubrutineBody;
}

/**
 * Generates a parse tree for a subroutine variable declaration
 * @return a ParseTree
 */
ParseTree* CompilerParser::compileVarDec() {
    ParseTree* nVarDoc = new ParseTree("varDoc","");
    nVarDoc->addChild(new ParseTree(current()->getType(),current()->getValue()));
    next();

    if (!have("keyword","int") && !have("keyword","char") && !have("keyword","boolean") && current()->getType() != "identifier"){
        throw ParseException();
        return NULL;
    }
    nVarDoc->addChild(new ParseTree(current()->getType(),current()->getValue()));
    next();

    if (current()->getType() != "identifier"){
        throw ParseException();
        return NULL;
    }
    nVarDoc->addChild(new ParseTree(current()->getType(),current()->getValue()));
    next();

    while (it != tokenList.end() && have("symbol",",")){
        nVarDoc->addChild(new ParseTree(current()->getType(),current()->getValue()));
        next();

        if (current()->getType() != "identifier"){
            throw ParseException();
            return NULL;
        }
        nVarDoc->addChild(new ParseTree(current()->getType(),current()->getValue()));
        next();
    }

    if (!have("symbol",";")){
        throw ParseException();
        return NULL;
    }
    nVarDoc->addChild(new ParseTree(current()->getType(),current()->getValue()));
    return nVarDoc;
}

/**
 * Generates a parse tree for a series of statements
 * @return a ParseTree
 */
ParseTree* CompilerParser::compileStatements() {
    ParseTree* nStatements = new ParseTree("statements","");

    while (have("keyword","let") || have("keyword","while") || have("keyword","if") || have("keyword","do") || have("keyword","return")){
        if (current()->getValue() == "let"){
            nStatements->addChild(compileLet());
        } else if (current()->getValue() == "while"){
            nStatements->addChild(compileWhile());
        } else if (current()->getValue() == "if"){
            nStatements->addChild(compileIf());
        } else if (current()->getValue() == "do"){
            nStatements->addChild(compileDo());
        } else {
            nStatements->addChild(compileReturn());
        }
    }
    return nStatements;
}

/**
 * Generates a parse tree for a let statement
 * @return a ParseTree
 */
ParseTree* CompilerParser::compileLet() {
    ParseTree* nLet = new ParseTree("letStatement","");
    nLet->addChild(new ParseTree(current()->getType(),current()->getValue()));
    next();

    if (current()->getType() != "identifier"){
        throw ParseException();
        return NULL;
    }
    nLet->addChild(new ParseTree(current()->getType(),current()->getValue()));
    next();

    if (have("symbol","[")){
        nLet->addChild(new ParseTree(current()->getType(),current()->getValue()));
        next();
        nLet->addChild(compileExpression());

        if (!have("symbol","]")){
            throw ParseException();
            return NULL;
        }
        nLet->addChild(new ParseTree(current()->getType(),current()->getValue()));
        next();
    }

    if (!have("symbol","=")){
        throw ParseException();
        return NULL;
    }
    nLet->addChild(new ParseTree(current()->getType(),current()->getValue()));
    next(); 
    nLet->addChild(compileExpression());

    if (!have("symbol",";")){
        throw ParseException();
        return NULL;
    }
    nLet->addChild(new ParseTree(current()->getType(),current()->getValue()));

    return nLet;
}

/**
 * Generates a parse tree for an if statement
 * @return a ParseTree
 */
ParseTree* CompilerParser::compileIf() {
    ParseTree* nIf = new ParseTree("ifStatement","");
    nIf->addChild(new ParseTree(current()->getType(),current()->getValue()));
    next();

    if (!have("symbol","(")){
        throw ParseException();
        return NULL;
    }
    nIf->addChild(new ParseTree(current()->getType(),current()->getValue()));
    next();
    nIf->addChild(compileExpression());

    if (!have("symbol",")")){
        throw ParseException();
        return NULL;
    }
    nIf->addChild(new ParseTree(current()->getType(),current()->getValue()));
    next();

    if (!have("symbol","{")){
        throw ParseException();
        return NULL;
    }
    nIf->addChild(new ParseTree(current()->getType(),current()->getValue()));
    next();
    nIf->addChild(compileStatements());

    if (!have("symbol","}")){
        throw ParseException();
        return NULL;
    }
    nIf->addChild(new ParseTree(current()->getType(),current()->getValue()));
    next();

    if (!have("keyword","else")){
        nIf->addChild(new ParseTree(current()->getType(),current()->getValue()));
        next();
        
        if (!have("symbol","{")){
            throw ParseException();
            return NULL;
        }
        nIf->addChild(new ParseTree(current()->getType(),current()->getValue()));
        next();
        nIf->addChild(compileStatements());

        if (!have("symbol","}")){
            throw ParseException();
            return NULL;
        }
        nIf->addChild(new ParseTree(current()->getType(),current()->getValue()));

    }
    return nIf;
}
/**
 * Generates a parse tree for a while statement
 * @return a ParseTree
 */
ParseTree* CompilerParser::compileWhile() {
    ParseTree* nWhile = new ParseTree("whileStatement","");
    nWhile->addChild(new ParseTree(current()->getType(),current()->getValue()));
    next();

    if (!have("symbol","(")){
        throw ParseException();
        return NULL;
    }
    nWhile->addChild(new ParseTree(current()->getType(),current()->getValue()));
    next();
    nWhile->addChild(compileExpression());

    if (!have("symbol",")")){
        throw ParseException();
        return NULL;
    }
    nWhile->addChild(new ParseTree(current()->getType(),current()->getValue()));
    next();

    if (!have("symbol","{")){
        throw ParseException();
        return NULL;
    }
    nWhile->addChild(new ParseTree(current()->getType(),current()->getValue()));
    next();
    nWhile->addChild(compileStatements());

    if (!have("symbol","}")){
        throw ParseException();
        return NULL;
    }
    nWhile->addChild(new ParseTree(current()->getType(),current()->getValue()));

    return nWhile;
}

/**
 * Generates a parse tree for a do statement
 * @return a ParseTree
 */
ParseTree* CompilerParser::compileDo() {
    ParseTree* nDo = new ParseTree("doStatement","");
    nDo->addChild(new ParseTree(current()->getType(),current()->getValue()));
    next();
    nDo->addChild(compileExpression());

    if (!have("symbol",";")){
        throw ParseException();
        return NULL;
    }
    nDo->addChild(new ParseTree(current()->getType(),current()->getValue()));

    return nDo;
}

/**
 * Generates a parse tree for a return statement
 * @return a ParseTree
 */
ParseTree* CompilerParser::compileReturn() {
    ParseTree* nReturn = new ParseTree("returnStatement","");
    nReturn->addChild(new ParseTree(current()->getType(),current()->getValue()));
    next();
    nReturn->addChild(compileExpression());

    if (!have("symbol",";")){
        throw ParseException();
        return NULL;
    }
    nReturn->addChild(new ParseTree(current()->getType(),current()->getValue()));

    return nReturn;
}

/**
 * Generates a parse tree for an expression
 * @return a ParseTree
 */
ParseTree* CompilerParser::compileExpression() {
    ParseTree* nExpression = new ParseTree("expression","");

    if (have("keyword","skip")){
        nExpression->addChild(new ParseTree(current()->getType(),current()->getValue()));
        next();
        return nExpression;
    }

    while (it != tokenList.end()){
        if (current()->getType() == "integerConstant"|| current()->getType() == "stringConstant"|| current()->getType() == "identifier" || current()->getType() == "keyword" || have("symbole","(")){
            nExpression->addChild(compileTerm());

        } else if (have("symbol","+") || have("symbol","-") || 
            have("symbol","*") || have("symbol","/") || 
            have("symbol","&") || have("symbol","|") || 
            have("symbol","<") || have("symbol",">") || 
            have("symbol","=")){
                nExpression->addChild(new ParseTree(current()->getType(),current()->getValue()));
                next(); 
        } else {
            break;
        }
    }

    return nExpression;
}

/**
 * Generates a parse tree for an expression term
 * @return a ParseTree
 */
ParseTree* CompilerParser::compileTerm() {
    ParseTree* nTerm = new ParseTree("term","");
    
    if (have("symbol","(")){
        nTerm->addChild(new ParseTree(current()->getType(),current()->getValue()));
        next();
        nTerm->addChild(compileExpression());

        if (!have("symbol",")")){
            throw ParseException();
            return NULL;   
        }
        nTerm->addChild(new ParseTree(current()->getType(),current()->getValue()));
        next();
        return nTerm;
    }

    while (it != tokenList.end()){
        if (current()->getType() == "integerConstant"|| current()->getType() == "stringConstant"|| current()->getType() == "identifier" || current()->getType() == "keyword"){
            nTerm->addChild(new ParseTree(current()->getType(),current()->getValue()));
            next();
        } else if (have("symbol",".")){
            nTerm->addChild(new ParseTree(current()->getType(),current()->getValue()));
            next();

            if(!have("symbol","(")){
                throw ParseException();
                return NULL;
            }
            nTerm->addChild(new ParseTree(current()->getType(),current()->getValue()));
            next();
            nTerm->addChild(compileExpressionList());

            if (!have("symbol",")")){
                throw ParseException();
                return NULL;
            }
            nTerm->addChild(new ParseTree(current()->getType(),current()->getValue()));
            next();
        } else {
            break;
        }
    }

    return nTerm;

}

/**
 * Generates a parse tree for an expression list
 * @return a ParseTree
 */
ParseTree* CompilerParser::compileExpressionList() {
    ParseTree* nExpressionList = new ParseTree("expressionList","");

    while (it != tokenList.end() && !have("symbol",")")){
        if (have("symbol",",")){
            nExpressionList->addChild(new ParseTree(current()->getType(),current()->getValue()));
            next();
        } else {
            nExpressionList->addChild(compileExpression());
        }
    }

    
    return nExpressionList;
}

/**
 * Advance to the next token
 */
void CompilerParser::next(){
    int i = 0;
    for (Token* t : tokenList){
        
        //std::cout << t->getType() << std::endl;
        //std::cout << i << " " << itNum << std::endl;
        if (i == itNum){
            itNum++;
            
            //std::cout << (*it)->getType() << std::endl;
            *it = t;
           // std::cout << (*it)->getType() << std::endl;
            return;
        }
        i++;
        
    }
    // if (it != tokenList.end()){
    //     std::cout << (*it)->getType() << std::endl;
    //     //++it;
    //     std::cout << (*it)->getType() << std::endl;
    // } else {
    //     throw ParseException();
    // }
}

void CompilerParser::prev(){
    int i=0;
    for (Token* t : tokenList){
        if(i == itNum){
            itNum--;
            *it = t;
            return;
        }
        i++;
    }

}

/**
 * Return the current token
 * @return the Token
 */
Token* CompilerParser::current(){
    if (it != tokenList.end()){
        //std::cout << "5" << std::endl;
        Token* t = *it;
        //std::cout << "6" << std::endl;
        //std::cout << "4" << t << std::endl;
        return t;
    } else{
        throw ParseException();
        return NULL;
    }
}

/**
 * Check if the current token matches the expected type and value.
 * @return true if a match, false otherwise
 */
bool CompilerParser::have(std::string expectedType, std::string expectedValue){
    //std::cout << "4" << std::endl;
    Token* token = *it;
    //std::cout << token->getType() << " " << expectedType << " " << token->getValue() << " " << expectedValue << std::endl;
    if (token->getType() == expectedType && token->getValue() == expectedValue){
        //std::cout << "5" << std::endl;
        return true;
    } else {
        //std::cout << "6" << std::endl;
        return false;
    }
}

/**
 * Check if the current token matches the expected type and value.
 * If so, advance to the next token, returning the current token, otherwise throw a ParseException.
 * @return the current token before advancing
 */
Token* CompilerParser::mustBe(std::string expectedType, std::string expectedValue){
    Token* token = *it;
    if (token->getType() == expectedType && token->getValue() == expectedValue){
        it++;
        return token;
    } else{
        throw ParseException();
    }
}

/**
 * Definition of a ParseException
 * You can use this ParseException with `throw ParseException();`
 */
const char* ParseException::what() {
    return "An Exception occurred while parsing!";
}
