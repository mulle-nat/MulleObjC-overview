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
- [`-init`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+init+of+NSLock+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSLock.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSLock.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Initializes the lock

### Locking Operations
- [`-lock`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+lock+of+NSLock+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSLock.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSLock.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Acquires the lock
- [`-unlock`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+unlock+of+NSLock+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSLock.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSLock.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Releases the lock
- [`-tryLock`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+tryLock+of+NSLock+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSLock.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSLock.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Attempts to acquire lock without blocking, returns YES if successful
- [`-lockBeforeTimeInterval:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+lockBeforeTimeInterval+of+NSLock+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSLock.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSLock.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Attempts to acquire lock before given time interval expires

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
