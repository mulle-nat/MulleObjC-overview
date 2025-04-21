# MulleObjCProperty

Functions for working with Objective-C properties in mulle-objc.

## Property Access

### Lookup Functions
```c
struct _mulle_objc_property *MulleObjCClassGetProperty(Class cls, mulle_objc_propertyid_t propertyid);
struct _mulle_objc_property *MulleObjCInstanceGetProperty(id obj, mulle_objc_propertyid_t propertyid);
```

### Property Information
```c
char *MulleObjCPropertyGetName(struct _mulle_objc_property *property);
char *MulleObjCPropertyGetSignature(struct _mulle_objc_property *property);
unsigned int MulleObjCPropertyGetAttributes(struct _mulle_objc_property *property);
```

## Property Attributes

### Attribute Constants
```c
#define MULLE_OBJC_PROPERTY_READONLY      (1 << 0)
#define MULLE_OBJC_PROPERTY_COPY          (1 << 1)
#define MULLE_OBJC_PROPERTY_RETAIN        (1 << 2)
#define MULLE_OBJC_PROPERTY_NONATOMIC     (1 << 3)
#define MULLE_OBJC_PROPERTY_DYNAMIC       (1 << 4)
```

### Attribute Checking
```c
BOOL MulleObjCPropertyIsReadOnly(struct _mulle_objc_property *property);
BOOL MulleObjCPropertyIsCopy(struct _mulle_objc_property *property);
BOOL MulleObjCPropertyIsRetained(struct _mulle_objc_property *property);
```

## Property Methods

### Accessor Generation
```c
SEL MulleObjCPropertyGetGetter(struct _mulle_objc_property *property);
SEL MulleObjCPropertyGetSetter(struct _mulle_objc_property *property);
```

## Best Practices

1. Cache property lookups when possible
2. Check property attributes before access
3. Respect readonly attributes
4. Handle memory management properly
5. Consider atomic vs nonatomic needs

## Thread Safety

- Property access follows attribute specifications
- Atomic properties are thread-safe
- Nonatomic properties require external synchronization
- Consider performance implications of atomic properties
