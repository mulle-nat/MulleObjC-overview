# MulleObject Functions

Core functions for the MulleObject base class in mulle-objc.

## Object Creation

### Initialization

``` c
id MulleObjectInit(id self);
id MulleObjectAlloc(Class cls);
id MulleObjectAllocWithZone(Class cls, NSZone *zone);
```

### Object Copying

``` c
id MulleObjectCopy(id self);
id MulleObjectCopyWithZone(id self, NSZone *zone);
```

## Runtime Operations

### Method Resolution

``` c
BOOL MulleObjectResolveInstanceMethod(Class cls, SEL sel);
BOOL MulleObjectResolveClassMethod(Class cls, SEL sel);
```

### Message Forwarding

``` c
id MulleObjectForwardingTargetForSelector(id self, SEL sel);
void MulleObjectForwardInvocation(id self, NSInvocation *invocation);
```

## Object Description

### String Representation

``` c
char *MulleObjectDescriptionUTF8String(id self);
char *MulleObjectDebugDescriptionUTF8String(id self);
```

### Hash and Equality

``` c
NSUInteger MulleObjectHash(id self);
BOOL MulleObjectIsEqual(id self, id other);
```

## Memory Management

### Reference Counting

``` c
id MulleObjectRetain(id self);
void MulleObjectRelease(id self);
id MulleObjectAutorelease(id self);
```

## Best Practices

1.  Override appropriate methods
2.  Handle memory management
3.  Implement proper description
4.  Consider hash/equality rules
5.  Document overrides

## Thread Safety

-   Basic operations are thread-safe
-   Consider subclass requirements
-   Handle concurrent access
-   Implement proper synchronization
