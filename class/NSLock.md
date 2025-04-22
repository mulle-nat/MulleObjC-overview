# NSLock

Basic mutex-based lock for thread synchronization in mulle-objc.
Note that this may be too heavyweight for very contested locks - consider
using mulle_thread_mutex_t directly in such cases.

## Base Class
NSObject

## Implemented Protocols
- NSLocking
- MulleObjCThreadSafe

## Instance Variables
```objc
mulle_thread_mutex_t    _lock;  // The underlying mutex
```

## Methods

All methods are marked with `MULLE_OBJC_THREADSAFE_METHOD`:

### Initialization
- `-init` - Initializes the lock

### Locking Operations
- `-lock` - Acquires the lock
- `-unlock` - Releases the lock
- `-tryLock` - Attempts to acquire lock without blocking, returns YES if successful
- `-lockBeforeTimeInterval:` - Attempts to acquire lock before given time interval expires

## Usage Example

```objc
NSLock *lock = [NSLock new];

// Basic locking
[lock lock];
// ... critical section ...
[lock unlock];

// Using convenience macro
MulleObjCLockDo( lock)
{
   // ... critical section ...
}  // automatically unlocked

// Try lock without blocking
if ([lock tryLock])
{
   // ... got the lock ...
   [lock unlock];
}

// Lock with timeout
if ([lock lockBeforeTimeInterval:1.0])
{
   // ... got the lock ...
   [lock unlock];
}
```

## Important Notes

1. Thread Safety
   - All methods are thread-safe
   - The lock itself provides thread safety for critical sections

2. Performance Considerations
   - Consider using mulle_thread_mutex_t directly for high-contention scenarios
   - The lockBeforeTimeInterval: method uses thread yielding for polling

3. Platform Specifics
   - Some platforms need explicit mutex cleanup in dealloc (controlled by MULLE_THREAD_MUTEX_NEEDS_DONE)
