# MulleObject

Base class that provides automatic thread-safe method locking in mulle-objc. Inherits from MulleDynamicObject and adds recursive locking capabilities.

## Base Class
MulleDynamicObject

## Implemented Protocols
- NSLocking
- MulleAutolockingObject (optional)

## Instance Variables
```objc
NSRecursiveLock   *__lock;  // Recursive lock for thread safety
```

## Methods

### Object Creation
- `+locklessObject` - Creates instance without lock
- `-initNoLock` - Initializes without lock
- `-init` - Initializes with lock

### Lock Operations (NSLocking)
- `-lock` - Acquires the lock
- `-unlock` - Releases the lock
- `-tryLock` - Attempts to acquire lock without blocking

### Lock Sharing
- `-didShareRecursiveLock:` - Called after lock sharing to update thread affinity
- `-shareRecursiveLock:` - Shares lock with another lock
- `-shareRecursiveLockWithObject:` - Shares lock with another MulleObject

### Internal Forwarding
- `-__lockingForward:` - Handles locking for forwarded methods
- `-__lockingSuperForward:` - Handles locking for super forwarded methods

## Usage Example

```objc
// Create thread-safe object
@interface MyObject : MulleObject <MulleAutolockingObjectProtocols>
@end

// Create lockless object
MyObject *obj = [MyObject locklessObject];

// Share lock between objects
MyObject *obj2 = [MyObject new];
[obj2 shareRecursiveLockWithObject:obj];

// Methods are automatically locked
[obj doSomething];  // Thread-safe
```

## Important Notes

1. Thread Safety
   - Methods are automatically locked when MulleAutolockingObject protocol is used
   - Lock sharing allows object hierarchies to share synchronization
   - Lockless objects are thread-affine until given a lock

2. Implementation Details
   - Uses NSRecursiveLock for thread safety
   - Caches method lookups for performance
   - Handles exceptions to prevent deadlocks
   - Supports both locked and lockless instances

3. Subclassing
   - Use MulleAutolockingObjectProtocols for thread safety
   - Override didShareRecursiveLock: carefully
   - Call [super didShareRecursiveLock:] when overriding

4. Cache Management
   - Maintains separate caches for thread-safe methods
   - Automatically invalidates caches when needed
   - Optimizes method lookup performance
