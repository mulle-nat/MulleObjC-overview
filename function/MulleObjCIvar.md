# MulleObjCIvar

Functions for working with instance variables (ivars) in mulle-objc.

## Ivar Access

### Basic Operations
```c
void *MulleObjCObjectGetIvar(id obj, struct mulle_objc_ivar *ivar);
void MulleObjCObjectSetIvar(id obj, struct mulle_objc_ivar *ivar, void *value);
```

### Type-Specific Access
```c
id MulleObjCObjectGetObjectIvar(id obj, struct mulle_objc_ivar *ivar);
void MulleObjCObjectSetObjectIvar(id obj, struct mulle_objc_ivar *ivar, id value);
```

## Ivar Information

### Lookup and Discovery
```c
struct mulle_objc_ivar *MulleObjCClassGetIvar(Class cls, mulle_objc_ivarid_t ivarid);
char *MulleObjCIvarGetName(struct mulle_objc_ivar *ivar);
char *MulleObjCIvarGetSignature(struct mulle_objc_ivar *ivar);
```

### Size and Offset
```c
unsigned int MulleObjCIvarGetOffset(struct mulle_objc_ivar *ivar);
unsigned int MulleObjCIvarGetSize(struct mulle_objc_ivar *ivar);
```

## Best Practices

1. Use type-specific functions when possible
2. Check ivar existence before access
3. Consider memory alignment
4. Handle retain/release properly for object ivars
5. Cache ivar lookups for performance

## Thread Safety

- Ivar access is not automatically thread-safe
- Implement proper synchronization when needed
- Consider using atomic properties instead of direct ivar access
