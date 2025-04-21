# NSNull Functions

Functions for working with the NSNull singleton in mulle-objc.

## Singleton Access

### Instance Management
```c
NSNull *NSNullObject(void);
BOOL NSIsNullObject(id obj);
```

### Thread Safety
```c
void NSNullEnsureThreadSafety(void);
void NSNullLock(void);
void NSNullUnlock(void);
```

## Comparison

### Identity Checks
```c
BOOL NSNullIsEqual(NSNull *null, id other);
NSUInteger NSNullHash(NSNull *null);
```

## Serialization

### Coding Support
```c
void NSNullEncodeWithCoder(NSNull *null, NSCoder *coder);
id NSNullInitWithCoder(NSNull *null, NSCoder *coder);
```

## Best Practices

1. Use NSNull to represent null values in collections
2. Check for NSNull using NSIsNullObject
3. Consider thread safety in concurrent access
4. Handle NSNull in serialization
5. Don't create NSNull instances directly

## Thread Safety

- Singleton access is thread-safe
- No need for external synchronization
- Safe for concurrent collections
- Consider atomic operations
