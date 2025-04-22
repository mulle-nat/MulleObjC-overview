# NSLock

## Overview

`NSLock` provides basic mutex functionality in mulle-objc. It offers a
simple, efficient mechanism for mutual exclusion in multi-threaded
applications.

## Key Features

-   Basic mutex functionality
-   Thread synchronization
-   Performance optimized
-   Debugging support
-   Error handling

## Usage

### Basic Locking

``` objc
NSLock *lock = [[NSLock alloc] init];

[lock lock];
// Critical section
[lock unlock];
```

### Conditional Locking

``` objc
if ([lock tryLock]) {
    // Critical section
    [lock unlock];
} else {
    // Handle lock failure
}
```

### Timed Locking

``` objc
if ([lock lockBeforeDate:[NSDate dateWithTimeIntervalSinceNow:5.0]]) {
    // Critical section
    [lock unlock];
} else {
    // Handle timeout
}
```

## Technical Details

### Core Methods

1.  **Lock Operations**:

    ``` objc
    - (void)lock;
    - (void)unlock;
    - (BOOL)tryLock;
    - (BOOL)lockBeforeDate:(NSDate *)limit;
    ```

2.  **Lock Information**:

    ``` objc
    - (void)setName:(NSString *)name;
    - (NSString *)name;
    ```

### Implementation Details

1.  **Mutex Management**:

    ``` objc
    - (void)_initializeMutex;
    - (void)_destroyMutex;
    ```

## Best Practices

1.  **Lock Usage**:
    -   Keep critical sections short
    -   Always unlock in same scope
    -   Use @try/@finally blocks
2.  **Error Handling**:
    -   Check tryLock results
    -   Handle timeouts
    -   Clean up properly
3.  **Performance**:
    -   Minimize lock contention
    -   Use appropriate granularity
    -   Consider lock-free alternatives

## Important Considerations

1.  **Thread Safety**:
    -   Proper lock/unlock pairing
    -   Deadlock prevention
    -   Exception safety
2.  **Performance**:
    -   Lock contention
    -   Critical section length
    -   Context switching
3.  **Debugging**:
    -   Lock naming
    -   Deadlock detection
    -   Lock hierarchy

## Use Cases

1.  **Resource Protection**:

    ``` objc
    - (void)accessSharedResource
    {
        [self->lock lock];
        @try {
            [self modifySharedResource];
        }
        @finally {
            [self->lock unlock];
        }
    }
    ```

2.  **Conditional Access**:

    ``` objc
    - (BOOL)attemptOperation
    {
        if ([self->lock tryLock]) {
            @try {
                [self performOperation];
                return YES;
            }
            @finally {
                [self->lock unlock];
            }
        }
        return NO;
    }
    ```

3.  **Timed Operations**:

    ``` objc
    - (BOOL)performTimedOperation
    {
        NSDate *deadline = [NSDate dateWithTimeIntervalSinceNow:5.0];
        if ([self->lock lockBeforeDate:deadline]) {
            @try {
                [self performOperation];
                return YES;
            }
            @finally {
                [self->lock unlock];
            }
        }
        return NO;
    }
    ```
