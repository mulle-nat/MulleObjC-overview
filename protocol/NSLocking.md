# NSLocking

The `NSLocking` protocol defines the basic interface for thread synchronization objects. It provides methods for acquiring and releasing locks in a thread-safe manner.

## Required Methods

* `lock` - Acquires the lock (blocks if already locked)
* `unlock` - Releases the lock

## Optional Methods

* `tryLock` - Attempts to acquire the lock without blocking
* `lockBeforeTimeInterval:` - Attempts to acquire the lock with a timeout

## Thread Safety

All methods in this protocol are marked as thread-safe using `MULLE_OBJC_THREADSAFE_METHOD`. They can be safely called from any thread without additional synchronization.

## Convenience Macros

The protocol provides several convenience macros for lock-based operations:

### MulleObjCLockDo / NSLockDo
```objc
NSLock *lock = [NSLock object];
MulleObjCLockDo(lock) 
{
    // Code here executes while locked
}
// Lock is automatically released
```

### Alternative Names
* `MulleObjCLockingDo`
* `NSLockingDo`
* `NSLockDo`

All these macros are equivalent and provide:
1. Automatic lock acquisition
2. Protected execution of a block of code
3. Automatic lock release, even if the block exits early
4. Safe handling of nil locks

## Usage Notes

1. Always pair lock/unlock calls
2. Use convenience macros when possible to avoid lock leaks
3. Keep locked sections as short as possible
4. Consider using tryLock for non-blocking operations
5. Use timeouts when appropriate to avoid deadlocks

## Example Usage

```objc
NSLock *lock = [NSLock object];

// Basic locking
[lock lock];
// Critical section
[lock unlock];

// Using convenience macro
NSLockDo(lock) {
    // Critical section
    if (error) {
        // Early return is safe
        return;
    }
    // More code
}

// Trying to lock without blocking
if ([lock tryLock]) {
    // Critical section
    [lock unlock];
}

// Locking with timeout
if ([lock lockBeforeTimeInterval:5.0]) {
    // Critical section
    [lock unlock];
}
```
