# NSProxy

## Overview

`NSProxy` is a root class in mulle-objc designed for proxy object implementation. It provides essential functionality for message interception and forwarding, making it ideal for creating proxy objects that mediate access to other objects.

## Key Features

- Message interception and forwarding
- Protocol conformance support
- Thread safety features
- Proxy object identification

## Usage

### Basic Proxy Implementation

```objc
@interface MyProxy : NSProxy
{
    id _target;
}
- (id)initWithTarget:(id)target;
@end

@implementation MyProxy
- (id)initWithTarget:(id)target
{
    [self setTarget:target];
    return self;
}

- (void)forwardInvocation:(NSInvocation *)invocation
{
    if ([_target respondsToSelector:[invocation selector]])
        [invocation invokeWithTarget:_target];
    else
        [self doesNotRecognizeSelector:[invocation selector]];
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)sel
{
    return [_target methodSignatureForSelector:sel];
}
@end
```

### Creating and Using Proxies

```objc
// Create target object
id target = [SomeClass new];

// Create proxy
MyProxy *proxy = [[MyProxy alloc] initWithTarget:target];

// Use proxy as if it were the target
[proxy someMethod];
```

## Technical Details

### Core Methods

1. **Message Forwarding**:
   ```objc
   - (void)forwardInvocation:(NSInvocation *)invocation;
   - (NSMethodSignature *)methodSignatureForSelector:(SEL)sel;
   ```

2. **Object Information**:
   ```objc
   - (BOOL)isProxy;
   - (Class)class;
   - (BOOL)respondsToSelector:(SEL)sel;
   ```

### Method Resolution

1. **Dynamic Resolution**:
   ```objc
   + (BOOL)resolveInstanceMethod:(SEL)sel;
   + (BOOL)resolveClassMethod:(SEL)sel;
   ```

## Best Practices

1. **Message Forwarding**:
   - Always implement both forwarding methods
   - Handle unknown selectors gracefully
   - Consider caching method signatures

2. **Thread Safety**:
   - Ensure thread-safe target access
   - Protect shared resources
   - Consider using locks when needed

3. **Memory Management**:
   - Properly retain/release target
   - Handle autorelease pools
   - Clean up resources

## Important Considerations

1. **Performance**:
   - Message forwarding overhead
   - Method signature caching
   - Target access efficiency

2. **Thread Safety**:
   - Target synchronization
   - State protection
   - Concurrent access

3. **Error Handling**:
   - Unrecognized selectors
   - Invalid targets
   - Resource cleanup

## Use Cases

1. **Remote Object Proxy**:
   ```objc
   @implementation RemoteProxy
   - (void)forwardInvocation:(NSInvocation *)invocation
   {
       // Forward to remote object
       [self sendInvocationToRemoteObject:invocation];
   }
   @end
   ```

2. **Lazy Loading Proxy**:
   ```objc
   @implementation LazyProxy
   - (id)target
   {
       if ([self _target] == nil)
           [self _loadTarget];
       return [self _target];
   }
   @end
   ```

3. **Protection Proxy**:
   ```objc
   @implementation ProtectionProxy
   - (void)forwardInvocation:(NSInvocation *)invocation
   {
       if ([self isOperationAllowed:invocation])
           [invocation invokeWithTarget:[self target]];
       else
           [self raiseSecurityException];
   }
   @end
   ```
