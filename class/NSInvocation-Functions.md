# NSInvocation Functions

Functions for creating and manipulating method invocations in mulle-objc.

## Invocation Creation

### Basic Creation
```c
NSInvocation *NSInvocationFromMethodSignature(NSMethodSignature *sig);
void NSInvocationSetSelector(NSInvocation *inv, SEL sel);
```

### Target Management
```c
void NSInvocationSetTarget(NSInvocation *inv, id target);
id NSInvocationGetTarget(NSInvocation *inv);
```

## Argument Handling

### Argument Access
```c
void NSInvocationGetArgument(NSInvocation *inv, void *buffer, NSInteger idx);
void NSInvocationSetArgument(NSInvocation *inv, void *buffer, NSInteger idx);
```

### Return Value
```c
void NSInvocationGetReturnValue(NSInvocation *inv, void *buffer);
void NSInvocationSetReturnValue(NSInvocation *inv, void *buffer);
```

## Invocation Control

### Execution
```c
void NSInvocationInvoke(NSInvocation *inv);
void NSInvocationInvokeWithTarget(NSInvocation *inv, id target);
```

### State Management
```c
BOOL NSInvocationArgumentsRetained(NSInvocation *inv);
void NSInvocationRetainArguments(NSInvocation *inv);
```

## Best Practices

1. Use appropriate buffer sizes
2. Retain arguments when needed
3. Handle return values properly
4. Check method signatures
5. Consider memory management

## Thread Safety

- Invocations are not thread-safe
- Use separate invocations per thread
- Synchronize shared invocations
- Consider argument retention
