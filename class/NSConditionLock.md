# NSConditionLock

A synchronization tool that combines a condition variable with an integer value. Used to synchronize threads based on state values.

## Base Class
NSCondition

## Instance Variables
```objc
mulle_atomic_pointer_t   _currentCondition;  // The current condition value
```

## Methods

### Initialization
- [`-initWithCondition:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+initWithCondition+of+NSConditionLock+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSConditionLock.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSConditionLock.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Initialize with starting condition value

### Condition Access
- [`-condition`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+condition+of+NSConditionLock+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSConditionLock.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSConditionLock.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Returns current condition value

### Locking Operations
- [`-lockWhenCondition:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+lockWhenCondition+of+NSConditionLock+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSConditionLock.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSConditionLock.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Acquires lock when condition matches value
- [`-mulleLockWhenNotCondition:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+mulleLockWhenNotCondition+of+NSConditionLock+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSConditionLock.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSConditionLock.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Acquires lock when condition doesn't match value
- [`-tryLockWhenCondition:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+tryLockWhenCondition+of+NSConditionLock+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSConditionLock.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSConditionLock.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Attempts to acquire lock if condition matches value
- [`-mulleTryLockWhenNotCondition:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+mulleTryLockWhenNotCondition+of+NSConditionLock+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSConditionLock.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSConditionLock.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Attempts to acquire lock if condition doesn't match value
- [`-unlockWithCondition:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+unlockWithCondition+of+NSConditionLock+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSConditionLock.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSConditionLock.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Releases lock and sets new condition value
- [`-mulleUnlockWithCondition:broadcast:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+mulleUnlockWithCondition:broadcast+of+NSConditionLock+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSConditionLock.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSConditionLock.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Releases lock, sets condition, optionally broadcasts

## Usage Example

```objc
NSConditionLock *lock = [[NSConditionLock alloc] initWithCondition:0];

// Wait for condition 0
[lock lockWhenCondition:0];
// ... do work ...
[lock unlockWithCondition:1];  // Signal completion

// Wait for condition 1
[lock lockWhenCondition:1];
// ... do more work ...
[lock unlockWithCondition:2];
```

## Important Notes

1. Thread Safety
   - All methods are thread-safe
   - Uses atomic operations for condition value
   - Inherits mutex and condition variable from NSCondition

2. Performance
   - Keep workload inside lock minimal
   - Other threads may deadlock in lockWhenCondition:beforeDate:

3. Implementation Details
   - Uses broadcast by default in unlockWithCondition:
   - Can control signal vs broadcast with mulleUnlockWithCondition:broadcast:
   - Condition value is stored atomically
