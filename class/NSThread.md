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
- `+mainThread` - Returns main thread object
- `+currentThread` - Returns current thread object
- `+detachNewThreadSelector:toTarget:withObject:` - Creates and starts new thread
- `+mulleThreadWithTarget:selector:object:` - Creates thread with target/selector
- `+mulleThreadWithFunction:argument:` - Creates thread with C function
- `+mulleThreadWithObjectFunction:object:` - Creates thread with object function

### Thread Control
- `-mulleStart` - Starts the thread
- `-mulleJoin` - Waits for thread completion
- `-start` - Legacy interface (detaches thread)
- `-cancel` - Marks thread for cancellation
- `-isCancelled` - Checks cancellation status

### Thread Information
- `+mulleIsMainThread` - Checks if current thread is main thread
- `+isMultiThreaded` - Checks if multiple threads are running
- `-mulleReturnStatus` - Gets thread return value
- `-mulleNameUTF8String` - Gets thread name
- `-mulleSetNameUTF8String:` - Sets thread name

### Run Loop Integration
- `-mulleSetRunLoop:` - Sets thread's run loop
- `-mulleRunLoop` - Gets thread's run loop

### Finalizers
- `-mulleAddFinalizer:` - Adds cleanup object
- `-mulleRemoveFinalizer:` - Removes cleanup object

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
