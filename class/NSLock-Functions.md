# NSLock Functions

Functions for synchronization and locking in mulle-objc.

## Basic Locking

### Lock Operations
```c
void NSLockLock(NSLock *lock);
void NSLockUnlock(NSLock *lock);
BOOL NSLockTryLock(NSLock *lock);
```

### Timed Locking
```c
BOOL NSLockLockBeforeDate(NSLock *lock, NSDate *limit);
```

## Recursive Locking

### Recursive Operations
```c
void NSRecursiveLockLock(NSRecursiveLock *lock);
void NSRecursiveLockUnlock(NSRecursiveLock *lock);
BOOL NSRecursiveLockTryLock(NSRecursiveLock *lock);
```

## Condition Locks

### Condition Operations
```c
void NSConditionLockLockWhenCondition(NSConditionLock *lock, NSInteger condition);
void NSConditionLockUnlockWithCondition(NSConditionLock *lock, NSInteger condition);
BOOL NSConditionLockTryLockWhenCondition(NSConditionLock *lock, NSInteger condition);
```

## Condition Variables

### Condition Variable Operations
```c
void NSConditionWait(NSCondition *condition);
void NSConditionSignal(NSCondition *condition);
void NSConditionBroadcast(NSCondition *condition);
```

### Timed Waiting
```c
BOOL NSConditionWaitUntilDate(NSCondition *condition, NSDate *limit);
```

## Best Practices

1. Always pair locks and unlocks
2. Use appropriate lock types
3. Avoid deadlocks
4. Consider timeout values
5. Handle lock contention

## Thread Safety

- All operations are thread-safe
- Consider lock ordering
- Avoid recursive deadlocks
- Handle lock timeouts
- Use appropriate granularity
