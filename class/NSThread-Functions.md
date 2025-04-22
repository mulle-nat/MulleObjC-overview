# NSThread Functions

Core functions for thread management and thread-local storage in mulle-objc.

## Thread Access

### Current Thread
```c
// Get current thread object, may return nil if not a MulleObjC thread
NSThread *MulleThreadGetCurrentThread(void);

// Get or create current thread object
NSThread *MulleThreadGetOrCreateCurrentThread(void);

// Get current thread's native handle
mulle_thread_t MulleThreadGetCurrentOSThread(void);
```

## Thread-Local Storage

### User Info
```c
// Get/set thread-local storage
id MulleThreadGetCurrentThreadUserInfo(void);
void MulleThreadSetCurrentThreadUserInfo(id info);

// Thread dictionary access
void MulleThreadSetObjectForKeyUTF8String(id value, char *key);
id MulleThreadObjectForKeyUTF8String(char *key);
```

### Thread Object Access
```c
// Get native thread handle from NSThread
mulle_thread_t MulleThreadObjectGetOSThread(NSThread *threadObject);
```

## TAO (Thread Access Optimization)

### Failure Handling
```c
// Handler for TAO violations
typedef void MulleObjCTAOFailureHandler(void *obj,
                                      mulle_thread_t osThread,
                                      struct _mulle_objc_descriptor *des);

// Get/set TAO failure handler
MulleObjCTAOFailureHandler *MulleObjCGetTAOFailureHandler(void);
void MulleObjCSetTAOFailureHandler(MulleObjCTAOFailureHandler *handler);

// Default handler that logs and aborts
void MulleObjCTAOLogAndFail(struct _mulle_objc_object *obj,
                           mulle_thread_t osThread,
                           struct _mulle_objc_descriptor *desc);
```

### Testing
```c
// Test class for TAO dilemma issues
void MulleObjCTAOTest(Class cls, id arg);
```

## Important Notes

1. Thread Safety
   - Functions are thread-safe
   - Thread-local storage is per-thread
   - TAO ensures proper thread access

2. Memory Management
   - Thread objects retained appropriately
   - Clean up thread-local storage
   - Handle autorelease pools

3. Best Practices
   - Check thread ownership
   - Use TAO for thread safety
   - Handle failures gracefully
   - Test thread interactions

4. Restrictions
   - Some functions only work in MulleObjC threads
   - TAO violations cause termination
   - Thread dictionary keys must be UTF8
