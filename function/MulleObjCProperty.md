# MulleObjCProperty Functions

Functions for property management in mulle-objc.

## Property Management

### Property Access
```c
// Get property info
char *_mulle_objc_property_get_name(struct _mulle_objc_property *property);
char *_mulle_objc_property_get_signature(struct _mulle_objc_property *property);
unsigned int _mulle_objc_property_get_bits(struct _mulle_objc_property *property);

// Get property IDs
mulle_objc_propertyid_t _mulle_objc_property_get_propertyid(struct _mulle_objc_property *property);
mulle_objc_methodid_t _mulle_objc_property_get_getter(struct _mulle_objc_property *property);
mulle_objc_methodid_t _mulle_objc_property_get_setter(struct _mulle_objc_property *property);
```

### Property State
```c
// Check property attributes
BOOL _mulle_objc_property_is_dynamic(struct _mulle_objc_property *property);
BOOL _mulle_objc_property_is_readonly(struct _mulle_objc_property *property);
BOOL _mulle_objc_property_is_settable(struct _mulle_objc_property *property);
BOOL _mulle_objc_property_is_atomic(struct _mulle_objc_property *property);
```

## Important Notes

1. Property Types
   - Handle all types
   - Check attributes
   - Validate values
   - Consider atomicity

2. Thread Safety
   - Check atomic props
   - Handle concurrent access
   - Use proper locks
   - Consider KVO

3. Best Practices
   - Validate properties
   - Handle all cases
   - Document attributes
   - Clean up properly

4. Performance
   - Cache lookups
   - Minimize locks
   - Use appropriate access
   - Consider inlining
