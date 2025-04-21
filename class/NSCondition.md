# NSCondition

## Overview

`NSCondition` provides condition variable functionality in mulle-objc through a thin wrapper around POSIX pthread primitives. It enables thread synchronization with wait/signal semantics.

## Key Features

- Condition variable functionality
- POSIX pthread integration
- Atomic operations
- Thread synchronization
- Debugging features

## Usage

### Basic Condition Usage

```objc
NSCondition *condition = [[NSCondition alloc] init];

// Waiting thread
[condition lock];
while (!ready) {
    [condition wait];
}
// Process data
[condition unlock];

// Signaling thread
[condition lock];
ready = YES;
[condition signal];
[condition unlock];
```

### Broadcast Signaling

```objc
[condition lock];
// Update shared state
[condition broadcast];
[condition unlock];
```

### Timed Waiting

```objc
[condition lock];
while (!ready) {
    if (![condition waitUntilDate:[NSDate dateWithTimeIntervalSinceNow:5.0]]) {
        // Handle timeout
        break;
    }
}
[condition unlock];
```

## Technical Details

### Core Methods

1. **Condition Operations**:
   ```objc
   - (void)wait;
   - (BOOL)waitUntilDate:(NSDate *)limit;
   - (void)signal;
   - (void)broadcast;
   ```

2. **Lock Operations**:
   ```objc
   - (void)lock;
   - (void)unlock;
   ```

### Implementation Details

1. **Pthread Integration**:
   ```objc
   - (void)_initializeCondition;
   - (void)_destroyCondition;
   ```

## Best Practices

1. **Condition Usage**:
   - Always check predicates
   - Use while loops for waiting
   - Handle spurious wakeups

2. **Lock Management**:
   - Balance lock/unlock calls
   - Use @try/@finally blocks
   - Minimize critical sections

3. **Error Handling**:
   - Check wait timeouts
   - Handle interruptions
   - Clean up properly

## Important Considerations

1. **Thread Safety**:
   - Proper lock usage
   - Predicate protection
   - Signal timing

2. **Performance**:
   - Wait efficiency
   - Signal overhead
   - Lock contention

3. **Debugging**:
   - Deadlock detection
   - Race conditions
   - Lost signals

## Use Cases

1. **Producer-Consumer**:
   ```objc
   - (void)produce:(id)item
   {
       [condition lock];
       @try {
           [queue addObject:item];
           [condition signal];
       }
       @finally {
           [condition unlock];
       }
   }

   - (id)consume
   {
       id item = nil;
       [condition lock];
       @try {
           while ([queue count] == 0) {
               [condition wait];
           }
           item = [queue removeFirstObject];
       }
       @finally {
           [condition unlock];
       }
       return item;
   }
   ```

2. **Thread Coordination**:
   ```objc
   - (void)waitForCompletion
   {
       [condition lock];
       @try {
           while (!isComplete) {
               [condition wait];
           }
       }
       @finally {
           [condition unlock];
       }
   }

   - (void)markComplete
   {
       [condition lock];
       @try {
           isComplete = YES;
           [condition broadcast];
       }
       @finally {
           [condition unlock];
       }
   }
   ```

3. **Resource Pool**:
   ```objc
   - (id)acquireResource
   {
       [condition lock];
       @try {
           while ([availableResources count] == 0) {
               [condition wait];
           }
           return [availableResources removeObject];
       }
       @finally {
           [condition unlock];
       }
   }

   - (void)releaseResource:(id)resource
   {
       [condition lock];
       @try {
           [availableResources addObject:resource];
           [condition signal];
       }
       @finally {
           [condition unlock];
       }
   }
   ```
