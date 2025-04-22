# NSLocking

Protocol for basic lock operations in mulle-objc.

## Required Methods
All methods are marked with `MULLE_OBJC_THREADSAFE_METHOD`:

- `-lock` - Acquires the lock
- `-unlock` - Releases the lock

## Optional Methods
Also marked with `MULLE_OBJC_THREADSAFE_METHOD`:

- `-tryLock` - Attempts to acquire lock without blocking
- `-lockBeforeTimeInterval:` - Attempts to acquire lock with timeout

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
