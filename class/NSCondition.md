# NSCondition

Thread synchronization primitive that combines mutex and condition variable functionality. Provides low-level thread coordination.

## Base Class
NSObject

## Implemented Protocols
- NSLocking
- MulleObjCThreadSafe

## Instance Variables
```objc
#ifndef _WIN32
pthread_mutex_t   _lock;       // Mutex for synchronization
pthread_cond_t    _condition;  // Condition variable
#endif
```

## Methods

### NSLocking Protocol
- [`-lock`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+lock+of+NSCondition+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSCondition.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSCondition.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Acquires the lock
- [`-unlock`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+unlock+of+NSCondition+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSCondition.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSCondition.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Releases the lock
- [`-tryLock`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+tryLock+of+NSCondition+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSCondition.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSCondition.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Attempts to acquire lock without blocking

### Condition Operations
- [`-signal`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+signal+of+NSCondition+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSCondition.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSCondition.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Wakes one waiting thread
- [`-broadcast`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+broadcast+of+NSCondition+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSCondition.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSCondition.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Wakes all waiting threads
- [`-wait`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+wait+of+NSCondition+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSCondition.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSCondition.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Waits for signal (must be locked)

### Properties
- [`@property name`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+property+name+of+NSCondition+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSCondition.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSCondition.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Condition name (for debugging)
- [`@property(readonly) mulleIsLocked`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+property+mulleIsLocked+of+NSCondition+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSCondition.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSCondition.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Lock state

## Usage Example

```objc
// Create condition
NSCondition *condition = [[NSCondition alloc] init];

// Producer thread
[condition lock];
// ... modify shared state ...
[condition signal];  // or [condition broadcast];
[condition unlock];

// Consumer thread
[condition lock];
while (!readyToProcess) {
    [condition wait];
}
// ... process shared state ...
[condition unlock];

// Try lock without blocking
if ([condition tryLock]) {
    // ... critical section ...
    [condition unlock];
}
```

## Important Notes

1. Thread Safety
   - Thread-safe by design
   - Requires careful lock/unlock pairing
   - Protects condition state

2. Implementation Details
   - Wraps pthread primitives
   - Combines mutex and condition
   - Supports spurious wakeups
   - Low-level synchronization

3. Usage Guidelines
   - Lock before wait/signal
   - Check conditions in while loop
   - Handle spurious wakeups
   - Avoid deadlocks

4. Best Practices
   - Keep critical sections short
   - Use NSConditionLock if possible
   - Document synchronization protocol
   - Consider higher-level alternatives

5. Common Pitfalls
   - Missing lock/unlock pairs
   - Not checking conditions in loop
   - Incorrect signal timing
   - Deadlock scenarios
