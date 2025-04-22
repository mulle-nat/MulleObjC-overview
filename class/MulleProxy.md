# MulleProxy

## Overview

`MulleProxy` is a thread-safe proxy implementation in mulle-objc that
provides controlled access to target objects. It features recursive locking,
message forwarding, and lock sharing capabilities.

## Key Features

-   Thread-safe proxy implementation
-   Recursive locking support
-   Message forwarding
-   Lock sharing
-   Performance optimized

## Usage

### Basic Proxy Creation

``` objc
// Create a proxy for an object
id target = [[MyObject alloc] init];
MulleProxy *proxy = [[MulleProxy alloc] initWithTarget:target];

// Use proxy as if it were the target
[proxy performOperation];
```

### Thread-Safe Access

``` objc
// All operations through proxy are thread-safe
[proxy modifyState];
[proxy performComplexOperation];

// Multiple operations in one critical section
[proxy performMultipleOperations:^{
    [self operation1];
    [self operation2];
}];
```

### Lock Sharing

``` objc
// Share lock between proxies
MulleProxy *proxy1 = [[MulleProxy alloc] initWithTarget:target1];
MulleProxy *proxy2 = [[MulleProxy alloc] initWithTarget:target2];
[proxy2 shareLockWith:proxy1];
```

## Technical Details

### Core Methods

1.  **Initialization**:

    ``` objc
    - (instancetype)initWithTarget:(id)target;
    - (void)setTarget:(id)target;
    - (id)target;
    ```

2.  **Lock Management**:

    ``` objc
    - (void)lock;
    - (void)unlock;
    - (void)shareLockWith:(MulleProxy *)other;
    ```

### Implementation Details

1.  **Message Forwarding**:

    ``` objc
    - (void)forwardInvocation:(NSInvocation *)invocation;
    - (NSMethodSignature *)methodSignatureForSelector:(SEL)sel;
    ```

## Best Practices

1.  **Proxy Usage**:
    -   Keep proxy lifecycle clear
    -   Handle target changes safely
    -   Clean up resources
2.  **Lock Management**:
    -   Share locks appropriately
    -   Avoid deadlocks
    -   Monitor contention
3.  **Performance**:
    -   Optimize message forwarding
    -   Manage lock granularity
    -   Cache when possible

## Important Considerations

1.  **Thread Safety**:
    -   Proxy synchronization
    -   Target thread safety
    -   Lock ordering
2.  **Resource Management**:
    -   Lock lifecycle
    -   Target retention
    -   Memory usage
3.  **Message Handling**:
    -   Forwarding overhead
    -   Method signatures
    -   Error handling

## Use Cases

1.  **Thread-Safe Wrapper**:

    ``` objc
    @implementation SafeObjectManager

    - (id)createSafeWrapper:(id)object
    {
        MulleProxy *proxy = [[MulleProxy alloc] initWithTarget:object];
        [self registerProxy:proxy];
        return proxy;
    }

    @end
    ```

2.  **Shared Resource Access**:

    ``` objc
    @implementation ResourceManager

    - (void)setupSharedAccess
    {
        MulleProxy *proxy1 = [self proxyForResource1];
        MulleProxy *proxy2 = [self proxyForResource2];

        // Share lock for coordinated access
        [proxy2 shareLockWith:proxy1];

        [self registerProxies:@[proxy1, proxy2]];
    }

    @end
    ```

3.  **Dynamic Target Switching**:

    ``` objc
    @implementation ProxyManager

    - (void)switchTarget:(id)newTarget
    {
        [self.proxy lock];
        @try {
            [self.proxy setTarget:newTarget];
            [self updateProxyState];
        }
        @finally {
            [self.proxy unlock];
        }
    }

    @end
    ```

## Advanced Features

### Custom Forwarding

``` objc
@implementation CustomProxy

- (void)forwardInvocation:(NSInvocation *)invocation
{
    [self lock];
    @try {
        // Pre-process invocation
        [self preprocessInvocation:invocation];
        
        // Forward to target
        [invocation invokeWithTarget:self.target];
        
        // Post-process invocation
        [self postprocessInvocation:invocation];
    }
    @finally {
        [self unlock];
    }
}

@end
```

### Lock Coordination

``` objc
@implementation CoordinatedProxy

- (void)coordinateAccess
{
    // Set up lock hierarchy
    [self.resourceProxy shareLockWith:self];
    [self.stateProxy shareLockWith:self];
    
    // Coordinated access
    [self lock];
    @try {
        [self.resourceProxy performOperation];
        [self.stateProxy updateState];
    }
    @finally {
        [self unlock];
    }
}

@end
```

### State Management

``` objc
@implementation StatefulProxy

- (void)manageState
{
    [self lock];
    @try {
        // Check and update proxy state
        if ([self shouldUpdateTarget]) {
            id newTarget = [self determineNewTarget];
            [self setTarget:newTarget];
        }
        
        // Perform state-dependent operations
        [self performStateSpecificOperations];
    }
    @finally {
        [self unlock];
    }
}

@end
```
