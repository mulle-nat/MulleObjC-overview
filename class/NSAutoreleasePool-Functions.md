# NSAutoreleasePool Functions

Functions for autorelease pool management in mulle-objc.

## Pool Management

### Basic Operations
```c
void NSAutoreleasePoolPush(void);
void NSAutoreleasePoolPop(void);
NSAutoreleasePool *NSAutoreleasePoolGetCurrent(void);
```

### Object Management
```c
id NSAutorelease(id obj);
void NSAutoreleasePoolAddObject(NSAutoreleasePool *pool, id obj);
```

## Pool Information

### State Queries
```c
NSUInteger NSAutoreleasePoolGetCount(NSAutoreleasePool *pool);
BOOL NSAutoreleasePoolContainsObject(NSAutoreleasePool *pool, id obj);
```

### Debug Support
```c
void NSAutoreleasePoolPrint(NSAutoreleasePool *pool);
void NSAutoreleasePoolSetLogging(BOOL flag);
```

## Thread Management

### Thread Local Pools
```c
NSAutoreleasePool *NSAutoreleasePoolGetThreadPool(void);
void NSAutoreleasePoolSetThreadPool(NSAutoreleasePool *pool);
```

## Best Practices

1. Balance push/pop operations
2. Use appropriate pool scope
3. Consider memory pressure
4. Handle nested pools
5. Clean up on thread exit

## Memory Management

### Pool Optimization
```c
void NSAutoreleasePoolTrim(NSAutoreleasePool *pool);
void NSAutoreleasePoolSetPageSize(NSUInteger size);
```

## Thread Safety

- Pool operations are thread-local
- Safe for concurrent use
- Each thread needs own pool
- Consider autorelease overhead
