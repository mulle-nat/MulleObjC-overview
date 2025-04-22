# NSLock Functions

Core functions for locking and synchronization in mulle-objc.

## Lock Management

### Instance Operations
```c
// Lock operations
void MulleObjCLockInstance(id obj);
void MulleObjCUnlockInstance(id obj);
BOOL MulleObjCTryLockInstance(id obj);

// Lock sharing
void MulleObjCInstanceShareLock(id obj, id other);
```

## Thread Safety

### Lock State
```c
// Check if instance is locked
BOOL MulleObjCInstanceIsLocked(id obj);

// Get lock owner thread
mulle_thread_t MulleObjCInstanceGetLockThread(id obj);
```

## Important Notes

1. Lock Usage
   - Always pair lock/unlock
   - Check lock ownership
   - Handle recursion
   - Share locks carefully

2. Thread Safety
   - Operations are thread-safe
   - Check thread ownership
   - Handle lock contention
   - Avoid deadlocks

3. Best Practices
   - Use appropriate lock type
   - Keep critical sections small
   - Document lock protocols
   - Handle lock failures

4. Performance
   - Minimize lock contention
   - Share locks when appropriate
   - Cache lock state
   - Consider alternatives
