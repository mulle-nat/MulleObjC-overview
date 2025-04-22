# NSThread

Thread management class in mulle-objc. Provides 1:1 mapping to native threads with thread-local storage and autorelease pool management.

## Base Class
NSObject

## Implemented Protocols
- MulleObjCThreadSafe

## Instance Variables
```objc
mulle_atomic_pointer_t   _osThread;           // Native thread handle
mulle_atomic_pointer_t   _runLoop;            // Associated run loop
mulle_atomic_pointer_t   _nameUTF8String;     // Thread name
mulle_atomic_pointer_t   _cancelled;          // Cancellation flag
NSInvocation            *_invocation;         // Target invocation
id                       _userInfo;           // Thread-local storage
MulleThreadFunction_t   *_function;           // C function to run
void                    *_functionArgument;    // Function argument
struct mulle__pointerarray _finalizers;       // Cleanup objects
void                    *_poolconfiguration;   // Autorelease pool config
struct mulle_map         _map;                // Thread dictionary
int                      _rval;               // Return value
char                     _isObjectFunctionArgument;
char                     _isDetached;
char                     _threadDidGainAccess;
```

## Methods

### Thread Creation
- [`+mainThread`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+mainThread+of+NSThread+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Returns main thread object
- [`+currentThread`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+currentThread+of+NSThread+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Returns current thread object
- [`+detachNewThreadSelector:toTarget:withObject:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+detachNewThreadSelector:toTarget:withObject+of+NSThread+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Creates and starts new thread
- [`+mulleThreadWithTarget:selector:object:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+mulleThreadWithTarget:selector:object+of+NSThread+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Creates thread with target/selector
- [`+mulleThreadWithFunction:argument:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+mulleThreadWithFunction:argument+of+NSThread+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Creates thread with C function
- [`+mulleThreadWithObjectFunction:object:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+mulleThreadWithObjectFunction:object+of+NSThread+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Creates thread with object function

### Thread Control
- [`-mulleStart`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+mulleStart+of+NSThread+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Starts the thread
- [`-mulleJoin`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+mulleJoin+of+NSThread+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Waits for thread completion
- [`-start`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+start+of+NSThread+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Legacy interface (detaches thread)
- [`-cancel`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+cancel+of+NSThread+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Marks thread for cancellation
- [`-isCancelled`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+isCancelled+of+NSThread+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Checks cancellation status

### Thread Information
- [`+mulleIsMainThread`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+mulleIsMainThread+of+NSThread+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Checks if current thread is main thread
- [`+isMultiThreaded`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+isMultiThreaded+of+NSThread+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Checks if multiple threads are running
- [`-mulleReturnStatus`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+mulleReturnStatus+of+NSThread+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Gets thread return value
- [`-mulleNameUTF8String`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+mulleNameUTF8String+of+NSThread+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Gets thread name
- [`-mulleSetNameUTF8String:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+mulleSetNameUTF8String+of+NSThread+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Sets thread name

### Run Loop Integration
- [`-mulleSetRunLoop:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+mulleSetRunLoop+of+NSThread+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Sets thread's run loop
- [`-mulleRunLoop`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+mulleRunLoop+of+NSThread+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Gets thread's run loop

### Finalizers
- [`-mulleAddFinalizer:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+mulleAddFinalizer+of+NSThread+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Adds cleanup object
- [`-mulleRemoveFinalizer:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+mulleRemoveFinalizer+of+NSThread+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Removes cleanup object

## Usage Example

```objc
// Create and start thread with selector
[NSThread detachNewThreadSelector:@selector(doWork:)
                        toTarget:self
                      withObject:data];

// Create thread with C function
NSThread *thread = [NSThread mulleThreadWithFunction:workerFunction 
                                          argument:data];
[thread mulleStart];
[thread mulleJoin];

// Create thread with block
NSThread *thread = [NSThread mulleThreadWithObjectFunction:^(NSThread *thread, id obj) {
    // Thread work here
    return 0;
} object:data];
[thread mulleStart];
```

## Important Notes

1. Thread Safety
   - Thread objects are thread-safe
   - Each thread has its own autorelease pool
   - Careful with non-thread-safe objects

2. Memory Management
   - Thread retains target and arguments
   - Objects passed between threads must be thread-safe
   - Use finalizers for cleanup

3. Thread Lifecycle
   - Threads can be joined or detached
   - Detached threads clean up automatically
   - Join threads to get return values

4. Autorelease Pools
   - Each thread has root autorelease pool
   - Pool configuration for debugging
   - Pools managed automatically

5. Thread Local Storage
   - Use _userInfo for thread data
   - Thread dictionary available
   - Map for key-value storage
