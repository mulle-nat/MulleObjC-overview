# NSLocking

Protocol for basic lock operations in mulle-objc.

## Required Methods
All methods are marked with `MULLE_OBJC_THREADSAFE_METHOD`:

- [`-lock`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+lock+of+NSLocking+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/NSLocking.h) - Acquires the lock
- [`-unlock`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+unlock+of+NSLocking+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/NSLocking.h) - Releases the lock

## Optional Methods
Also marked with `MULLE_OBJC_THREADSAFE_METHOD`:

- [`-tryLock`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+tryLock+of+NSLocking+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/NSLocking.h) - Attempts to acquire lock without blocking
- [`-lockBeforeTimeInterval:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+lockBeforeTimeInterval+of+NSLocking+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/NSLocking.h) - Attempts to acquire lock with timeout

## Convenience Macros

```objc
// Use:
NSLock *lock;
lock = [NSLock object];
MulleObjCLockDo( lock)
{
   // do stuff while locked
}
// lock is now unlocked
// If lock is nil, this will run one time, regardless.
```

Alias macros available:
- `MulleObjCLockingDo( name)`
- `NSLockDo( name)`
- `NSLockingDo( name)`