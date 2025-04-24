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
- [`+proxyWithObject:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+proxyWithObject+of+MulleProxy+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Creates and returns an autoreleased proxy with lock
- [`+locklessProxyWithObject:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+locklessProxyWithObject+of+MulleProxy+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Creates proxy without lock
- [`-initWithObject:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+initWithObject+of+MulleProxy+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Initializes proxy with lock
- [`-initNoLockWithObject:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+initNoLockWithObject+of+MulleProxy+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Initializes proxy without lock

### Lock Operations
- [`-lock`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+lock+of+MulleProxy+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Acquires the recursive lock
- [`-unlock`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+unlock+of+MulleProxy+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Releases the recursive lock
- [`-tryLock`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+tryLock+of+MulleProxy+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Attempts to acquire lock without blocking

### Lock Sharing
- [`-didShareRecursiveLock:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+didShareRecursiveLock+of+MulleProxy+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Called after lock sharing to update thread affinity
- [`-shareRecursiveLock:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+shareRecursiveLock+of+MulleProxy+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Shares lock with another lock
- [`-shareRecursiveLockWithObject:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+shareRecursiveLockWithObject+of+MulleProxy+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Shares lock with a MulleObject
- [`-shareRecursiveLockWithProxy:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+shareRecursiveLockWithProxy+of+MulleProxy+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Shares lock with another proxy

### Thread Access (TAO) Support
All marked with `MULLE_OBJC_THREADSAFE_METHOD`:
- [`-mulleIsThreadSafe`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+mulleIsThreadSafe+of+MulleProxy+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Returns YES
- [`-mulleIsAccessible`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+mulleIsAccessible+of+MulleProxy+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Returns YES
- [`-mulleIsAccessibleByThread:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+mulleIsAccessibleByThread+of+MulleProxy+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Returns YES
- [`-mulleTAOStrategy`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+mulleTAOStrategy+of+MulleProxy+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Returns MulleObjCTAOKnownThreadSafe
- [`-mulleRelinquishAccess`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+mulleRelinquishAccess+of+MulleProxy+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Retains self
- [`-mulleGainAccess`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+mulleGainAccess+of+MulleProxy+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Autoreleases self
- [`-mulleGainAccessWithTAOStrategy:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+mulleGainAccessWithTAOStrategy+of+MulleProxy+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Autoreleases self
- [`-mulleRelinquishAccessWithTAOStrategy:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+mulleRelinquishAccessWithTAOStrategy+of+MulleProxy+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Retains self

### Class and Protocol Introspection
All marked with `MULLE_OBJC_THREADSAFE_METHOD`:
- [`-class`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+class+of+MulleProxy+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Returns target's class
- [`-superclass`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+superclass+of+MulleProxy+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Returns target's superclass
- [`-isKindOfClass:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+isKindOfClass+of+MulleProxy+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Forwards to target
- [`-isMemberOfClass:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+isMemberOfClass+of+MulleProxy+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Forwards to target
- [`-mulleContainsProtocol:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+mulleContainsProtocol+of+MulleProxy+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Forwards to target
- [`-conformsToProtocol:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+conformsToProtocol+of+MulleProxy+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Forwards to target

### Method Introspection
All marked with `MULLE_OBJC_THREADSAFE_METHOD`:
- [`-methodForSelector:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+methodForSelector+of+MulleProxy+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Forwards to target
- [`-respondsToSelector:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+respondsToSelector+of+MulleProxy+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Forwards to target
- [`-methodSignatureForSelector:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+methodSignatureForSelector+of+MulleProxy+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Forwards to target

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
