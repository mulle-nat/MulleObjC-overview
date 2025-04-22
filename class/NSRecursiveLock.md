# NSRecursiveLock

A recursive mutex implementation that allows the same thread to acquire the lock multiple times without deadlocking.

## Base Class
NSLock

## Instance Variables
```objc
mulle_atomic_pointer_t   _thread;  // Current owning thread
mulle_atomic_pointer_t   _depth;   // Lock recursion depth
```

## Methods

All methods are marked with `MULLE_OBJC_THREADSAFE_METHOD`:

### Locking Operations
- [`-lock`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+lock+of+NSRecursiveLock+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSRecursiveLock.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSRecursiveLock.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Acquires or re-acquires the lock, incrementing depth counter
- [`-unlock`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+unlock+of+NSRecursiveLock+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSRecursiveLock.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSRecursiveLock.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Decrements depth counter, releases lock when depth reaches 0
- [`-tryLock`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+tryLock+of+NSRecursiveLock+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSRecursiveLock.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSRecursiveLock.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Attempts to acquire lock without blocking, returns YES if successful

## Usage Example

```objc
NSRecursiveLock *lock = [NSRecursiveLock new];

// Same thread can acquire multiple times
[lock lock];
[lock lock];  // Increments depth counter
// ... critical section ...
[lock unlock];  // Decrements depth counter
[lock unlock];  // Releases lock

// Try lock without blocking
if ([lock tryLock])
{
   if ([lock tryLock])  // Can acquire again
   {
      // ... nested critical section ...
      [lock unlock];
   }
   [lock unlock];
}
```

## Important Notes

1. Thread Safety
   - All methods are thread-safe
   - Only the owning thread can recursively lock
   - Must balance lock/unlock calls

2. Implementation Details
   - Uses atomic operations for thread and depth tracking
   - Inherits base mutex functionality from NSLock
   - Validates thread ownership in unlock operations
