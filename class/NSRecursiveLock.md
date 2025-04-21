# NSRecursiveLock

## Overview

`NSRecursiveLock` extends the basic locking functionality of NSLock with recursive locking capabilities in mulle-objc. It allows the same thread to acquire the lock multiple times without deadlocking.

## Key Features

- Recursive locking support
- Thread safety
- Lock counting
- Performance optimized
- Debugging support

## Usage

### Basic Recursive Locking

```objc
NSRecursiveLock *lock = [[NSRecursiveLock alloc] init];

[lock lock];
[lock lock];  // Same thread can acquire lock again
// Critical section
[lock unlock];
[lock unlock];
```

### Conditional Locking

```objc
if ([lock tryLock]) {
    // Nested locking is allowed
    if ([lock tryLock]) {
        // More critical code
        [lock unlock];
    }
    [lock unlock];
}
```

### Timed Locking

```objc
if ([lock lockBeforeDate:[NSDate dateWithTimeIntervalSinceNow:5.0]]) {
    // Critical section with possible recursive locks
    [lock unlock];
}
```

## Technical Details

### Core Methods

1. **Lock Operations**:
   ```objc
   - (void)lock;
   - (void)unlock;
   - (BOOL)tryLock;
   - (BOOL)lockBeforeDate:(NSDate *)limit;
   ```

2. **Lock Information**:
   ```objc
   - (void)setName:(NSString *)name;
   - (NSString *)name;
   ```

### Implementation Details

1. **Recursive Handling**:
   ```objc
   - (void)_initializeRecursiveLock;
   - (void)_destroyRecursiveLock;
   ```

## Best Practices

1. **Lock Usage**:
   - Balance lock/unlock calls
   - Track recursion depth
   - Use @try/@finally blocks

2. **Error Handling**:
   - Check tryLock results
   - Handle timeouts
   - Clean up properly

3. **Performance**:
   - Minimize recursion depth
   - Keep critical sections short
   - Consider lock alternatives

## Important Considerations

1. **Thread Safety**:
   - Only recursive in same thread
   - Match lock/unlock count
   - Handle exceptions

2. **Performance**:
   - Recursion overhead
   - Lock tracking cost
   - Memory usage

3. **Debugging**:
   - Track recursion depth
   - Monitor lock ownership
   - Detect misuse

## Use Cases

1. **Recursive Operations**:
   ```objc
   - (void)processNode:(Node *)node
   {
       [self->lock lock];
       @try {
           [self processNodeData:node];
           for (Node *child in [node children]) {
               [self processNode:child];  // Recursive call with same lock
           }
       }
       @finally {
           [self->lock unlock];
       }
   }
   ```

2. **Reentrant Methods**:
   ```objc
   - (void)performOperation
   {
       [self->lock lock];
       @try {
           [self helperMethod];  // May call back into performOperation
       }
       @finally {
           [self->lock unlock];
       }
   }
   ```

3. **Safe Recursion**:
   ```objc
   - (void)recursiveOperation:(NSUInteger)depth
   {
       if ([self->lock tryLock]) {
           @try {
               if (depth > 0) {
                   [self recursiveOperation:(depth - 1)];
               }
           }
           @finally {
               [self->lock unlock];
           }
       }
   }
   ```
