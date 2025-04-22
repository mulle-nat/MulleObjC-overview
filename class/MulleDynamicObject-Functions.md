# MulleDynamicObject Functions

Functions for dynamic property support in mulle-objc.

## Property Management

### Value Setting
```c
// Set property values
void _MulleDynamicObjectValueSetter(MulleDynamicObject *self,
                                  SEL selector,
                                  void *_param,
                                  char *objcType);

void _MulleDynamicObjectNumberSetter(MulleDynamicObject *self,
                                   SEL selector,
                                   void *_param,
                                   char *objcType);

// Get property values
void _MulleDynamicObjectValueGetter(MulleDynamicObject *self,
                                  SEL selector,
                                  void *_param);
```

## Property Analysis

### Type Information
```c
// Get property type info
MulleObjCGenericType _MulleObjCGenericTypeOfProperty(struct _mulle_objc_property *property);
MulleObjCGenericType _MulleObjCGenericTypeOfSignature(char *signature);

// Search for dynamic property
struct _mulle_objc_property *_MulleObjCClassPointerSearchDynamicProperty(
    struct _mulle_objc_infraclass **infra_p,
    mulle_objc_methodid_t methodid);
```

## Method Generation

### Accessor Creation
```c
// Create property methods
struct _mulle_objc_method *_mulle_objc_infraclass_create_methods_for_property(
    struct _mulle_objc_infraclass *infra,
    struct _mulle_objc_property *property,
    mulle_objc_methodid_t neededSel);
```

## Important Notes

1. Property Types
   - Handle all value types
   - Support objects
   - Manage memory
   - Check signatures

2. Method Generation
   - Create accessors
   - Handle selectors
   - Cache methods
   - Update classes

3. Best Practices
   - Validate types
   - Check properties
   - Handle errors
   - Cache lookups

4. Performance
   - Cache properties
   - Minimize searches
   - Reuse methods
