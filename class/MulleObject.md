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
- [`+locklessObject`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+locklessObject+of+MulleObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/MulleObject.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/MulleObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Creates instance without lock
- [`-initNoLock`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+initNoLock+of+MulleObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/MulleObject.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/MulleObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Initializes without lock
- [`-init`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+init+of+MulleObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/MulleObject.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/MulleObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Initializes with lock

### Lock Operations (NSLocking)
- [`-lock`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+lock+of+MulleObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/MulleObject.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/MulleObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Acquires the lock
- [`-unlock`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+unlock+of+MulleObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/MulleObject.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/MulleObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Releases the lock
- [`-tryLock`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+tryLock+of+MulleObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/MulleObject.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/MulleObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Attempts to acquire lock without blocking

### Lock Sharing
- [`-didShareRecursiveLock:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+didShareRecursiveLock+of+MulleObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/MulleObject.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/MulleObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Called after lock sharing to update thread affinity
- [`-shareRecursiveLock:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+shareRecursiveLock+of+MulleObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/MulleObject.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/MulleObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Shares lock with another lock
- [`-shareRecursiveLockWithObject:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+shareRecursiveLockWithObject+of+MulleObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/MulleObject.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/MulleObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Shares lock with another MulleObject

### Internal Forwarding
- [`-__lockingForward:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+__lockingForward+of+MulleObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/MulleObject.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/MulleObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Handles locking for forwarded methods
- [`-__lockingSuperForward:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+__lockingSuperForward+of+MulleObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/MulleObject.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/MulleObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Handles locking for super forwarded methods

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
