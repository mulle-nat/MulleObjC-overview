# MulleObjCTaggedPointer Functions

Functions for tagged pointer support in mulle-objc.

## Tagged Pointer Operations

### Basic Operations
```c
BOOL MulleObjCIsTaggedPointer(id obj);
id MulleObjCTaggedPointerCreate(NSUInteger tag, NSUInteger payload);
```

### Value Access
```c
NSUInteger MulleObjCTaggedPointerGetTag(id obj);
NSUInteger MulleObjCTaggedPointerGetPayload(id obj);
```

## Tag Management

### Tag Registration
```c
void MulleObjCTaggedPointerRegisterClass(Class cls, NSUInteger tag);
Class MulleObjCTaggedPointerGetClass(NSUInteger tag);
```

### Tag Information
```c
BOOL MulleObjCTaggedPointerIsValidTag(NSUInteger tag);
NSUInteger MulleObjCTaggedPointerGetMaxTag(void);
```

## Extended Operations

### Bit Operations
```c
NSUInteger MulleObjCTaggedPointerGetBits(id obj, NSRange range);
id MulleObjCTaggedPointerSetBits(id obj, NSUInteger value, NSRange range);
```

### Special Values
```c
id MulleObjCTaggedPointerNil(void);
BOOL MulleObjCTaggedPointerIsNil(id obj);
```

## Best Practices

1. Check pointer type
2. Handle tag limits
3. Consider payload size
4. Document tag usage
5. Handle invalid tags

## Thread Safety

- Operations are lock-free
- Safe for concurrent use
- No synchronization needed
- Consider atomic updates
