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
- `-initWithCondition:` - Initialize with starting condition value

### Condition Access
- `-condition` - Returns current condition value

### Locking Operations
- `-lockWhenCondition:` - Acquires lock when condition matches value
- `-mulleLockWhenNotCondition:` - Acquires lock when condition doesn't match value
- `-tryLockWhenCondition:` - Attempts to acquire lock if condition matches value
- `-mulleTryLockWhenNotCondition:` - Attempts to acquire lock if condition doesn't match value
- `-unlockWithCondition:` - Releases lock and sets new condition value
- `-mulleUnlockWithCondition:broadcast:` - Releases lock, sets condition, optionally broadcasts

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
