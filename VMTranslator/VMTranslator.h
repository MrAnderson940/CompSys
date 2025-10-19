#ifndef VMTRANSLATOR_H
#define VMTRANSLATOR_H

#include <string>

class VMTranslator {
    private:
        int lables;

    public:
        std::string newLable();

        VMTranslator();
        ~VMTranslator();

        // all of these
        static std::string vm_push(std::string segment, int offset);
        static std::string vm_pop(std::string segment, int offset);


        // one of these
        static std::string vm_add();
        static std::string vm_sub();
        static std::string vm_neg();


        // 2 of these 
        static std::string vm_eq();
        static std::string vm_gt();
        static std::string vm_lt();
        static std::string vm_and();
        static std::string vm_or();
        static std::string vm_not();

        // all of these
        static std::string vm_label(std::string label);
        static std::string vm_goto(std::string label);
        static std::string vm_if(std::string label);

        // all of these
        static std::string vm_function(std::string function_name, int n_vars);
        static std::string vm_call(std::string function_name, int n_args);
        static std::string vm_return();
        
};

#endif /* VMTRANSLATOR_H */