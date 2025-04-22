# MulleObjCHashFunctions

Core functions for hash computation in mulle-objc.

## Hash Functions

### String Hashing
```c
// Hash UTF8 string
mulle_objc_uniqueid_t mulle_objc_uniqueid_from_string(char *s);

// Hash method name
mulle_objc_methodid_t mulle_objc_methodid_from_string(char *s);

// Hash class name
mulle_objc_classid_t mulle_objc_classid_from_string(char *s);
```

### Pointer Hashing
```c
// Hash pointer value
uintptr_t _mulle_objc_object_hash(void *obj);

// Hash pointer with mask
uintptr_t _mulle_objc_object_hash_inline(void *obj, uintptr_t mask);
```

## Important Notes

1. Hash Properties
   - Consistent results
   - Good distribution
   - Fast computation
   - Handle NULL values

2. Thread Safety
   - Functions are thread-safe
   - No shared state
   - Safe for concurrent use
   - Cache results

3. Best Practices
   - Cache hash values
   - Handle collisions
   - Use appropriate function
   - Consider distribution

4. Performance
   - Fast computation
   - Minimal overhead
   - Cache when possible
   - Avoid recomputation
