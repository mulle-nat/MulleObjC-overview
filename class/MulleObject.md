# MulleObject

## Overview

`MulleObject` is the fundamental base class in mulle-objc that provides
automatic thread-safe method locking. It serves as a foundation for objects
requiring built-in thread safety and synchronization capabilities.

## Key Features

-   Automatic thread-safe methods
-   Built-in locking mechanism
-   Thread synchronization
-   Performance optimized
-   Caching system

## Usage

### Basic Thread-Safe Object

``` objc
@interface MyThreadSafeObject : MulleObject
@end

@implementation MyThreadSafeObject

- (void)performOperation
{
    // Method is automatically thread-safe
    [self modifySharedState];
}

@end
```

### Lock Configuration

``` objc
@implementation MyCustomObject

- (void)configureLocking
{
    // Configure locking behavior
    [self setLockingMode:MulleThreadSafeLockingMode];
}

- (void)performCriticalOperation
{
    // Critical section is protected
    [self updateSharedResource];
}

@end
```

### Cache Management

``` objc
@implementation CachedObject

- (id)cachedValue
{
    // Thread-safe cache access
    id value = [self.cache objectForKey:@"key"];
    if (!value) {
        value = [self computeExpensiveValue];
        [self.cache setObject:value forKey:@"key"];
    }
    return value;
}

@end
```

## Technical Details

### Core Methods

1.  **Locking Control**:

    ``` objc
    - (void)setLockingMode:(MulleLockingMode)mode;
    - (MulleLockingMode)lockingMode;
    - (void)lock;
    - (void)unlock;
    ```

2.  **Thread Safety**:

    ``` objc
    - (BOOL)isThreadSafe;
    - (void)setThreadSafe:(BOOL)flag;
    ```

### Implementation Details

1.  **Lock Management**:

    ``` objc
    - (void)_initializeLock;
    - (void)_destroyLock;
    ```

## Best Practices

1.  **Thread Safety**:
    -   Use appropriate locking mode
    -   Keep critical sections short
    -   Avoid deadlocks
2.  **Performance**:
    -   Optimize lock granularity
    -   Cache when appropriate
    -   Monitor contention
3.  **Error Handling**:
    -   Handle lock failures
    -   Manage timeouts
    -   Clean up resources

## Important Considerations

1.  **Locking Strategy**:
    -   Method-level locking
    -   Lock granularity
    -   Performance impact
2.  **Thread Interaction**:
    -   Lock ordering
    -   Deadlock prevention
    -   Resource sharing
3.  **Resource Management**:
    -   Lock lifecycle
    -   Cache invalidation
    -   Memory usage

## Use Cases

1.  **Shared Resource Management**:

    ``` objc
    @implementation SharedResource

    - (void)updateResource:(id)newValue
    {
        // Automatically thread-safe
        self.resource = newValue;
        [self notifyObservers];
    }

    - (id)getResource
    {
        // Safe read access
        return self.resource;
    }

    @end
    ```

2.  **Cached Operations**:

    ``` objc
    @implementation CachedProcessor

    - (id)processData:(id)input
    {
        // Thread-safe cache lookup
        id cached = [self.cache objectForKey:input];
        if (cached) {
            return cached;
        }

        id result = [self heavyProcessing:input];
        [self.cache setObject:result forKey:input];
        return result;
    }

    @end
    ```

3.  **State Management**:

    ``` objc
    @implementation StateManager

    - (void)transitionToState:(State)newState
    {
        // Thread-safe state transition
        State oldState = self.currentState;
        self.currentState = newState;
        [self handleTransitionFromState:oldState toState:newState];
    }

    @end
    ```

## Advanced Features

### Custom Lock Behavior

``` objc
@implementation CustomLockObject

- (void)customizeLocking
{
    [self setLockingMode:MulleCustomLockingMode];
    [self configureLockWithTimeout:5.0
                      retryCount:3
                    failureMode:MulleLockFailureModeWait];
}

@end
```

### Performance Optimization

``` objc
@implementation OptimizedObject

- (void)optimizeLocking
{
    // Configure for read-heavy workload
    [self setLockingMode:MulleReadOptimizedLockingMode];
    [self setupReadCache];
}

@end
```

### Resource Management

``` objc
@implementation ResourceManager

- (void)manageResource
{
    [self lock];
    @try {
        [self allocateResource];
        [self initializeResource];
    }
    @finally {
        [self unlock];
    }
}

@end
```
