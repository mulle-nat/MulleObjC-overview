# MulleProxy

A thread-safe proxy implementation that provides locking and access control for target objects.

## Base Class
NSProxy

## Instance Variables
```objc
NSRecursiveLock   *__lock;           // Recursive lock for thread safety
id                __target;          // The proxied object
IMP               __gain_imp;        // Cached method for gaining access
IMP               __relinquish_imp;  // Cached method for relinquishing access
NSUInteger        __taoStrategy;     // Thread access strategy
```

## Methods

### Initialization
- `+proxyWithObject:` - Creates and returns an autoreleased proxy with lock
- `+locklessProxyWithObject:` - Creates proxy without lock
- `-initWithObject:` - Initializes proxy with lock
- `-initNoLockWithObject:` - Initializes proxy without lock

### Lock Operations
- `-lock` - Acquires the recursive lock
- `-unlock` - Releases the recursive lock
- `-tryLock` - Attempts to acquire lock without blocking

### Lock Sharing
- `-didShareRecursiveLock:` - Called after lock sharing to update thread affinity
- `-shareRecursiveLock:` - Shares lock with another lock
- `-shareRecursiveLockWithObject:` - Shares lock with a MulleObject
- `-shareRecursiveLockWithProxy:` - Shares lock with another proxy

### Thread Access (TAO) Support
All marked with `MULLE_OBJC_THREADSAFE_METHOD`:
- `-mulleIsThreadSafe` - Returns YES
- `-mulleIsAccessible` - Returns YES
- `-mulleIsAccessibleByThread:` - Returns YES
- `-mulleTAOStrategy` - Returns MulleObjCTAOKnownThreadSafe
- `-mulleRelinquishAccess` - Retains self
- `-mulleGainAccess` - Autoreleases self
- `-mulleGainAccessWithTAOStrategy:` - Autoreleases self
- `-mulleRelinquishAccessWithTAOStrategy:` - Retains self

### Class and Protocol Introspection
All marked with `MULLE_OBJC_THREADSAFE_METHOD`:
- `-class` - Returns target's class
- `-superclass` - Returns target's superclass
- `-isKindOfClass:` - Forwards to target
- `-isMemberOfClass:` - Forwards to target
- `-mulleContainsProtocol:` - Forwards to target
- `-conformsToProtocol:` - Forwards to target

### Method Introspection
All marked with `MULLE_OBJC_THREADSAFE_METHOD`:
- `-methodForSelector:` - Forwards to target
- `-respondsToSelector:` - Forwards to target
- `-methodSignatureForSelector:` - Forwards to target

## Usage Example

```objc
// Create proxy with lock
id target = [MyObject new];
MulleProxy *proxy = [MulleProxy proxyWithObject:target];

// Use proxy - automatically locks/unlocks around method calls
[proxy doSomething];

// Share lock between proxies
MulleProxy *proxy2 = [MulleProxy proxyWithObject:target2];
[proxy2 shareRecursiveLockWithProxy:proxy];
```

## Important Notes

1. Thread Safety
   - All methods are thread-safe
   - Uses recursive locking for method calls
   - Can share locks between proxies

2. Implementation Details
   - Forwards all unknown methods to target
   - Automatically locks around forwarded calls
   - Caches access method IMPs for performance

3. Exception Handling
   - Detects exceptions passing through proxy calls
   - Prevents potential deadlocks from exceptions
   - Raises internal inconsistency in debug builds
