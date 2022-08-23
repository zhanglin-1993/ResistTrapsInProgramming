//
// char* and float* variable
//
/*
/
/1.when data was processed by functions in C++, the pointer could be passed to the function as a paramter.
/And thus, only a constant variable indicating the success or failure of the function is needed to called back,
/then, parameters or data processed are not needed to passed to the calling function.
/
/2.for example, when a float variable is needed to be processed, then a pointer float* can be passed to the called function,
/assumpt another function which process a double variable with the same processing code is needed,
/similar function can be wrote with double* pointer, while longer codes should be added.
/
/3.better method can be applied when char* pointer but not the float* or double* pointer is passed to the function,
/and meanwhile, ransfer the char* pointer to the float* or double* pointer in the function, then the requirement for
/these two kind of variable could be satisfied.
/
/4.the reason lies in the reality that the float or double variable is stored binarily in the memory, the difference
/are only the length read once for the variable. for example, if a char* variable is passed to the function, it should
/be transfered to the float* variable, while if not, char variable with length 1/4 of that in float is read,
/and also the variable read is comletely different from the float one.
/
*/