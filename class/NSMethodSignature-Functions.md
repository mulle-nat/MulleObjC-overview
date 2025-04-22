# NSMethodSignature Functions

Functions for working with method signatures and type encoding in mulle-objc.

## Type Information

### Type Analysis
```c
// Get type info from signature
struct mulle_objc_typeinfo *mulle_objc_signature_supply_typeinfo(char *type,
                                                                size_t *length,
                                                                struct mulle_objc_typeinfo *info);

// Count types in signature
NSUInteger mulle_objc_signature_count_typeinfos(char *types);
```

## MetaABI Support

### Parameter Types
```c
// Get MetaABI parameter type
enum MulleObjCMetaABIType {
    MulleObjCMetaABITypeVoid = 0,
    MulleObjCMetaABITypeVoidPointer = 1,
    MulleObjCMetaABITypeParameterBlock = 2
};

// Get parameter/return types
MulleObjCMetaABIType mulle_objc_signature_get_metaabiparamtype(char *signature);
MulleObjCMetaABIType mulle_objc_signature_get_metaabireturntype(char *signature);
```

## Type Navigation

### Type Parsing
```c
// Skip type qualifiers
char *_mulle_objc_signature_skip_type_qualifier(char *signature);

// Get next type in signature
char *mulle_objc_signature_next_type(char *signature);
```

## Important Notes

1. Type Handling
   - Parse types carefully
   - Handle qualifiers properly
   - Consider alignment
   - Support MetaABI

2. Memory Layout
   - Follow MetaABI rules
   - Handle variable sizes
   - Consider padding

3. Best Practices
   - Cache type info
   - Validate signatures
   - Handle all types
   - Check alignments

4. Performance
   - Cache parsed info
   - Minimize parsing
   - Use MetaABI
