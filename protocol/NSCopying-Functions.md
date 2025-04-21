# NSCopying Protocol Functions

Functions for object copying and cloning in mulle-objc.

## Basic Copying

### Copy Operations
```c
id NSCopyObject(id obj, NSUInteger extraBytes, NSZone *zone);
id NSCopyObjectWithZone(id obj, NSUInteger extraBytes, NSZone *zone);
```

### Deep Copying
```c
id NSDeepCopyObject(id obj);
id NSDeepCopyObjectWithZone(id obj, NSZone *zone);
```

## Specialized Copying

### Mutable Copying
```c
id NSMutableCopyObject(id obj);
id NSMutableCopyObjectWithZone(id obj, NSZone *zone);
```

### Collection Copying
```c
id NSCopyCollection(id collection);
id NSDeepCopyCollection(id collection);
```

## Copy Helpers

### Memory Management
```c
void NSCopyItemsInRange(id *dst, 
                       id *src, 
                       NSRange range,
                       NSZone *zone);
void NSDeepCopyItemsInRange(id *dst,
                           id *src,
                           NSRange range,
                           NSZone *zone);
```

## Best Practices

1. Implement proper copy semantics
2. Handle deep copying correctly
3. Consider memory zones
4. Document copying behavior
5. Handle nil objects

## Thread Safety

- Copy operations should be thread-safe
- Consider concurrent modifications
- Handle collection copying
- Implement atomic operations
