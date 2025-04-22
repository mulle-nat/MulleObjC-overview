# MulleProxy Functions

Functions for proxy object creation and message forwarding in mulle-objc.

## Proxy Creation

### Basic Creation

``` c
id MulleProxyCreate(id target);
id MulleProxyCreateWithZone(id target, NSZone *zone);
```

### Specialized Proxies

``` c
id MulleProxyCreateForClass(Class cls);
id MulleProxyCreateWithHandler(id handler);
```

## Message Handling

### Forward Operations

``` c
id MulleProxyForwardingTargetForSelector(id self, SEL sel);
void MulleProxyForwardInvocation(id self, NSInvocation *invocation);
```

### Method Resolution

``` c
BOOL MulleProxyRespondsToSelector(id self, SEL sel);
NSMethodSignature *MulleProxyMethodSignatureForSelector(id self, SEL sel);
```

## Proxy Management

### Target Operations

``` c
id MulleProxyGetTarget(id proxy);
void MulleProxySetTarget(id proxy, id target);
```

### State Information

``` c
BOOL MulleProxyIsProxy(id obj);
Class MulleProxyGetProxyClass(void);
```

## Best Practices

1.  Handle target lifecycle
2.  Implement proper forwarding
3.  Consider memory management
4.  Document proxy behavior
5.  Handle nil targets

## Thread Safety

-   Proxy creation is thread-safe
-   Target access needs synchronization
-   Consider message ordering
-   Handle concurrent forwarding
