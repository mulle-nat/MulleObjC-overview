# NSInvocation

## Overview

`NSInvocation` provides dynamic method invocation capabilities in mulle-objc. It encapsulates method calls with their arguments and target, integrating with the Meta ABI system for efficient method dispatch.

## Key Features

- Dynamic method invocation
- Argument management
- Return value handling
- Meta ABI integration
- Memory optimization

## Usage

### Creating Invocations

```objc
// Create invocation with signature
NSMethodSignature *signature = [target methodSignatureForSelector:@selector(method:)];
NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:signature];

[invocation setTarget:target];
[invocation setSelector:@selector(method:)];
```

### Setting Arguments

```objc
// Set arguments
NSInteger arg1 = 42;
[invocation setArgument:&arg1 atIndex:2];  // Index 0,1 are target and selector

NSString *arg2 = @"Hello";
[invocation setArgument:&arg2 atIndex:3];
```

### Invoking Methods

```objc
// Invoke the method
[invocation invoke];

// Get return value
id result;
[invocation getReturnValue:&result];
```

## Technical Details

### Core Methods

1. **Invocation Setup**:
   ```objc
   + (NSInvocation *)invocationWithMethodSignature:(NSMethodSignature *)sig;
   - (void)setTarget:(id)target;
   - (void)setSelector:(SEL)selector;
   ```

2. **Argument Handling**:
   ```objc
   - (void)setArgument:(void *)buffer atIndex:(NSInteger)index;
   - (void)getArgument:(void *)buffer atIndex:(NSInteger)index;
   ```

3. **Method Invocation**:
   ```objc
   - (void)invoke;
   - (void)invokeWithTarget:(id)target;
   ```

## Best Practices

1. **Argument Management**:
   - Handle types correctly
   - Check index bounds
   - Manage memory properly

2. **Error Handling**:
   - Validate signatures
   - Check arguments
   - Handle exceptions

3. **Performance**:
   - Cache invocations when possible
   - Minimize dynamic calls
   - Handle memory efficiently

## Important Considerations

1. **Memory Management**:
   - Retain arguments
   - Clean up resources
   - Handle autorelease

2. **Thread Safety**:
   - Thread-local usage
   - Target synchronization
   - Argument protection

3. **Performance Impact**:
   - Dynamic dispatch cost
   - Argument copying
   - Return value handling

## Use Cases

1. **Method Forwarding**:
   ```objc
   - (void)forwardInvocation:(NSInvocation *)invocation
   {
       if ([alternateTarget respondsToSelector:[invocation selector]]) {
           [invocation invokeWithTarget:alternateTarget];
       } else {
           [self doesNotRecognizeSelector:[invocation selector]];
       }
   }
   ```

2. **Delayed Execution**:
   ```objc
   - (void)performLater:(NSInvocation *)invocation
   {
       [self retain];  // Retain self until execution
       dispatch_after(dispatch_time(DISPATCH_TIME_NOW, delay), queue, ^{
           [invocation invoke];
           [self release];
       });
   }
   ```

3. **Method Interception**:
   ```objc
   - (void)interceptInvocation:(NSInvocation *)invocation
   {
       // Log before
       [self logBeforeInvocation:invocation];
       
       // Perform original invocation
       [invocation invoke];
       
       // Log after
       [self logAfterInvocation:invocation];
   }
   ```

## Advanced Features

### Meta ABI Integration

```objc
- (void)handleMetaABICall
{
    NSMethodSignature *signature = [invocation methodSignature];
    if ([signature isMetaABI]) {
        // Handle Meta ABI specific features
        struct mulle_metaabi *abi = [signature metaABIStruct];
        // Process using Meta ABI
    }
}
```

### Return Value Management

```objc
- (void)processReturnValue
{
    NSMethodSignature *signature = [invocation methodSignature];
    const char *returnType = [signature methodReturnType];
    
    if (strcmp(returnType, @encode(id)) == 0) {
        id result;
        [invocation getReturnValue:&result];
        // Process object return
    }
}
```

### Argument Copying

```objc
- (void)copyArguments
{
    NSMethodSignature *signature = [invocation methodSignature];
    NSUInteger count = [signature numberOfArguments];
    
    for (NSUInteger i = 2; i < count; i++) {
        NSUInteger size, align;
        [signature getArgumentSizeAtIndex:i size:&size align:&align];
        
        void *buffer = malloc(size);
        [invocation getArgument:buffer atIndex:i];
        // Process argument
        free(buffer);
    }
}
```
