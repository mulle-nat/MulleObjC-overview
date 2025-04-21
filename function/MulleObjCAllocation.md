# MulleObjCAllocation

Functions for object allocation and memory management in mulle-objc.

## Core Allocation Functions

### Object Allocation
```c
id NSAllocateObject(Class cls, NSUInteger extraBytes, NSZone *zone);
void NSDeallocateObject(id obj);
```

### Extra Memory Management
```c
NSUInteger NSExtraInstanceSize(Class cls);
NSUInteger NSGetExtraBytes(id obj);
```

### Zone Operations
```c
NSZone *NSDefaultMallocZone(void);
NSZone *NSZoneFromPointer(void *ptr);
```

## Memory Zones

While zones are supported for compatibility, all zone operations map to standard memory functions in mulle-objc. The zone parameter is typically ignored, maintaining compatibility while eliminating overhead.

## Best Practices

1. Use `NSAllocateObject` for standard object allocation
2. Remember to pair allocations with `NSDeallocateObject`
3. Consider extra bytes when subclassing
4. Don't rely on zone functionality for optimization
5. Use modern allocation patterns when possible
