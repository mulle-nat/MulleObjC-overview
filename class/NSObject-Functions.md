# NSObject Functions

Core functions for object lifecycle and runtime operations in mulle-objc.

## Object Creation

### Instance Management
```c
// Create instance with extra bytes
id _MulleObjCClassAllocateInstance(Class cls, size_t extra);

// Create non-zeroed instance with extra bytes
id _MulleObjCClassAllocateNonZeroedObject(Class cls, size_t extra);

// Free instance memory
void _MulleObjCInstanceFree(id obj);
```

## Memory Management

### Reference Counting
```c
// Retain/release operations
void _mulle_objc_object_retain(void *obj);
void _mulle_objc_object_release(void *obj);

// Autorelease support
void *_mulle_objc_object_autorelease(void *obj);
```

## Thread Access

### TAO (Thread Access Optimization)
```c
// Thread ownership checks
BOOL MulleObjCObjectIsOnMainThread(id obj);
BOOL MulleObjCObjectIsAccessibleByThread(id obj, NSThread *thread);

// Thread affinity management
void MulleObjCInstanceSetThreadAffinity(id obj, mulle_thread_t thread);
```

## Runtime Information

### Class Access
```c
// Get class information
Class MulleObjCObjectGetClass(id obj);
char *MulleObjCObjectGetClassNameUTF8String(id obj);

// Get universe
struct _mulle_objc_universe *_mulle_objc_object_get_universe(void *obj);
```

## Important Notes

1. Memory Management
   - Use high-level methods when possible
   - Handle retain/release properly
   - Consider autorelease pools

2. Thread Safety
   - Most functions are thread-safe
   - TAO ensures proper access
   - Check thread ownership

3. Best Practices
   - Cache class information
   - Handle memory properly
   - Check thread access
   - Use proper allocation

4. Performance
   - Inline functions available
   - Cache lookups when possible
   - Consider TAO overhead
