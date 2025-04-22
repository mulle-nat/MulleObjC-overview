# NSConditionLock

## Overview

`NSConditionLock` extends NSCondition with condition-based locking
capabilities in mulle-objc. It provides state-based thread synchronization
with atomic operations and flexible signaling mechanisms.

## Key Features

-   State-based synchronization
-   Atomic operations
-   Flexible signaling
-   Thread coordination
-   Condition tracking

## Usage

### Basic Condition Lock

``` objc
NSConditionLock *lock = [[NSConditionLock alloc] initWithCondition:0];

// Wait for condition 0
[lock lockWhenCondition:0];
// Process
[lock unlockWithCondition:1];

// Wait for condition 1
[lock lockWhenCondition:1];
// Process
[lock unlockWithCondition:2];
```

### Try Lock with Condition

``` objc
if ([lock tryLockWhenCondition:expectedState]) {
    // Process
    [lock unlockWithCondition:newState];
}
```

### Timed Condition Lock

``` objc
if ([lock lockWhenCondition:expectedState
                beforeDate:[NSDate dateWithTimeIntervalSinceNow:5.0]]) {
    // Process
    [lock unlockWithCondition:newState];
}
```

## Technical Details

### Core Methods

1.  **Lock Operations**:

    ``` objc
    - (void)lock;
    - (void)unlock;
    - (void)lockWhenCondition:(NSInteger)condition;
    - (void)unlockWithCondition:(NSInteger)condition;
    ```

2.  **Conditional Operations**:

    ``` objc
    - (BOOL)tryLock;
    - (BOOL)tryLockWhenCondition:(NSInteger)condition;
    - (BOOL)lockWhenCondition:(NSInteger)condition beforeDate:(NSDate *)limit;
    ```

### State Management

1.  **Condition Handling**:

    ``` objc
    - (NSInteger)condition;
    - (void)setCondition:(NSInteger)value;
    ```

## Best Practices

1.  **State Management**:
    -   Define clear state transitions
    -   Document state meanings
    -   Use constants for states
2.  **Lock Usage**:
    -   Check conditions carefully
    -   Handle timeouts
    -   Clean up properly
3.  **Error Handling**:
    -   Verify state transitions
    -   Handle lock failures
    -   Maintain invariants

## Important Considerations

1.  **Thread Safety**:
    -   Atomic state changes
    -   Lock ordering
    -   Deadlock prevention
2.  **Performance**:
    -   State checking overhead
    -   Lock contention
    -   Wait efficiency
3.  **Debugging**:
    -   State tracking
    -   Transition logging
    -   Error detection

## Use Cases

1.  **State Machine**:

    ``` objc
    - (void)advanceState
    {
        [lock lockWhenCondition:STATE_READY];
        @try {
            [self processCurrentState];
            [lock unlockWithCondition:STATE_PROCESSING];
        }
        @finally {
            if ([lock condition] == STATE_READY) {
                [lock unlock];
            }
        }
    }
    ```

2.  **Resource Management**:

    ``` objc
    - (void)waitForResource
    {
        [lock lockWhenCondition:RESOURCE_AVAILABLE];
        @try {
            [self useResource];
            [lock unlockWithCondition:RESOURCE_IN_USE];
        }
        @finally {
            if ([lock condition] == RESOURCE_AVAILABLE) {
                [lock unlock];
            }
        }
    }
    ```

3.  **Pipeline Processing**:

    ``` objc
    - (void)processStage
    {
        [lock lockWhenCondition:STAGE_READY];
        @try {
            [self performStageWork];
            [lock unlockWithCondition:STAGE_COMPLETE];
        }
        @finally {
            if ([lock condition] == STAGE_READY) {
                [lock unlock];
            }
        }
    }
    ```
