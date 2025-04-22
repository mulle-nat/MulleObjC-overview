# NSLocking

Protocol for basic lock operations.

## Required Methods

- `-lock` - Acquires the lock
- `-unlock` - Releases the lock

Note: Implemented by NSLock, NSRecursiveLock, and NSConditionLock. All methods must be thread-safe.
