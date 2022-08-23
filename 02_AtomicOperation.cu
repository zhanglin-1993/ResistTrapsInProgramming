//
// atomic operation
//
/*
/
/1.when the variable is process by the multi-threads, conllision could be happened when the specific variable is read and wrote by multi-threads,
/at the time, the conllision can be resolved by atomic operation, in which the variable is locked when it was read and wrote by one thread.
/
/2.for cuda 11.1, the atomic operation has been provided for long long time. when cuda runtime and toolkit is installed correctly, then the 
/atomic operation, e.g. atomicAdd is already provided, the function can be used directly. what should pay attention to include:
/
/2.1 the project is built on cuda, otherwise  2.2 and 2.3 is not seen:
//TODO    right click project - build dependencies - build customizations - cuda 11.1
/2.2 the cuda file using the atomic operation should be include for build and the item type should be cuda file:
//TODO    right click the cuda file - properties - item type - cuda c/c++
/2.3 different operation capbilities are supported by different gpu, i.e., atomicAdd is only supported by gpu with capabilities no smaller than 6.0
/and thus, for the specific atomoic operation, the operation capabilities should be configured:
//TODO   right click project - properties - cuda c/c++ - device - compute_60,sm_60
/2.4 another point should be clarified is that, the atomic operation might be optimized by the NVIDIA,
/but the precondition is the vector which would be operated has been set values before. if the atomic operation is applied in a function in which 
/the vector value is calculated one by one first, then the atomic operation could be inefficient.
/
*/