# NSObject Functions

Core functions for object lifecycle and runtime operations in mulle-objc.

## Object Lifecycle

### Initialization
```c
id NSAllocateObject(Class cls, NSUInteger extraBytes, NSZone *zone);
void NSDeallocateObject(id obj);
id NSCopyObject(id obj, NSUInteger extraBytes, NSZone *zone);
```

### Runtime Operations
```c
BOOL NSShouldRetainWithZone(NSObject *obj, NSZone *zone);
void NSIncrementExtraRefCount(id object);
BOOL NSDecrementExtraRefCountWasZero(id object);
```

## Method Resolution

### Dynamic Method Handling
```c
void *NSForwardingTargetForSelector(id self, SEL sel);
BOOL NSResolveInstanceMethod(Class cls, SEL sel);
BOOL NSResolveClassMethod(Class cls, SEL sel);
```

### Message Forwarding
```c
void NSForwardInvocation(id self, NSInvocation *invocation);
NSMethodSignature *NSMethodSignatureForSelector(id self, SEL sel);
```

## Object Description

### Introspection
```c
NSString *NSStringFromClass(Class cls);
NSString *NSStringFromSelector(SEL sel);
NSString *NSStringFromProtocol(Protocol *proto);
```

### Object Information
```c
Class NSClassFromString(NSString *string);
SEL NSSelectorFromString(NSString *string);
Protocol *NSProtocolFromString(NSString *string);
```

## Best Practices

1. Use high-level allocation methods
2. Handle reference counting properly
3. Implement forwarding when needed
4. Cache method resolutions
5. Consider memory zones

## Thread Safety

- Most functions are thread-safe
- Reference counting is atomic
- Method resolution may need locks
- Consider forwarding implications
