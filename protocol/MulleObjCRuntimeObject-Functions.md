# MulleObjCRuntimeObject Functions

Functions for runtime object operations in mulle-objc.

## Runtime Operations

### Object Information

``` c
Class MulleObjCObjectGetClass(id obj);
void MulleObjCObjectSetClass(id obj, Class cls);
```

### Method Resolution

``` c
IMP MulleObjCObjectGetMethodImplementation(id obj, SEL sel);
BOOL MulleObjCObjectRespondsToSelector(id obj, SEL sel);
```

## Instance Variables

### Ivar Access

``` c
void *MulleObjCObjectGetInstanceVariable(id obj, const char *name);
void MulleObjCObjectSetInstanceVariable(id obj, const char *name, void *value);
```

### Layout Information

``` c
const char *MulleObjCObjectGetIvarLayout(id obj);
const char *MulleObjCObjectGetWeakIvarLayout(id obj);
```

## Runtime Flags

### Flag Management

``` c
void MulleObjCObjectSetRuntimeFlags(id obj, unsigned int flags);
unsigned int MulleObjCObjectGetRuntimeFlags(id obj);
```

### Special Flags

``` c
void MulleObjCObjectSetFinalizeFlag(id obj);
BOOL MulleObjCObjectGetFinalizeFlag(id obj);
```

## Best Practices

1.  Use runtime functions carefully
2.  Handle class changes properly
3.  Consider ivar layout
4.  Document runtime flags
5.  Handle finalization

## Thread Safety

-   Runtime operations need locks
-   Handle concurrent access
-   Consider atomic operations
-   Implement proper synchronization
