# MulleObjCIvar Functions

Functions for instance variable management in mulle-objc.

## Ivar Access

### Object Ivars
```c
// Get/set object ivar
void _mulle_objc_object_set_object_inline(struct _mulle_objc_object *obj,
                                         void **p,
                                         void *value);

// Get/set nonatomic ivar
void _mulle_objc_object_set_nonatomic_inline(struct _mulle_objc_object *obj,
                                            void **p,
                                            void *value);
```

### Thread Access
```c
// Get/set thread affinity
void _mulle_objc_object_set_thread(struct _mulle_objc_object *obj,
                                  mulle_thread_t thread);

mulle_thread_t _mulle_objc_object_get_thread(struct _mulle_objc_object *obj);
```

## Important Notes

1. Memory Management
   - Handle retain/release
   - Clean up properly
   - Consider ownership
   - Check thread safety

2. Thread Safety
   - Use atomic operations
   - Check thread affinity
   - Handle concurrent access
   - Consider TAO rules

3. Best Practices
   - Use appropriate functions
   - Check thread ownership
   - Handle errors
   - Document usage

4. Performance
   - Minimize atomic ops
   - Cache when possible
   - Consider inlining
   - Handle contention
