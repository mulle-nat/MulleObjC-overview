# MulleObject Functions

Core functions for MulleObject class in mulle-objc.

## Object Management

### Instance Operations
```c
// Get instance allocator
struct mulle_allocator *MulleObjCInstanceGetAllocator(id obj);

// Get class name
char *MulleObjCInstanceGetClassNameUTF8String(id obj);

// Set class
void MulleObjCInstanceSetClass(id obj, Class cls);
```

## Thread Safety

### Lock Management
```c
// Lock operations
void MulleObjCLockInstance(id obj);
void MulleObjCUnlockInstance(id obj);
BOOL MulleObjCTryLockInstance(id obj);

// Lock sharing
void MulleObjCInstanceShareLock(id obj, id other);
```

## Important Notes

1. Thread Safety
   - Use locks properly
   - Share locks carefully
   - Check lock state
   - Handle recursion

2. Memory Management
   - Use correct allocator
   - Handle class changes
   - Clean up properly

3. Best Practices
   - Lock appropriately
   - Share locks safely
   - Check instances
   - Handle errors

4. Performance
   - Cache allocators
   - Minimize locking
   - Share locks
