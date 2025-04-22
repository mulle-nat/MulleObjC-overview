# NSInvocation Functions

Functions for working with method invocations in mulle-objc.

## Invocation Support

### Frame Management
```c
// Get frame size for MetaABI
size_t mulle_metaabi_sizeof_union(size_t size);

// Check if type can be stored in pointer
BOOL mulle_metaabi_is_voidptr_storage_compatible(size_t size);
```

## Memory Management

### Value Handling
```c
// Copy values
void mulle_id_copy(id *dst, id *src, size_t n);

// Release objects
void _mulle_objc_objects_release(void **objects, NSUInteger count);
```

## Important Notes

1. Memory Layout
   - Follow MetaABI rules
   - Handle variable sizes
   - Consider alignment
   - Manage frames

2. Performance
   - Cache invocations
   - Minimize copying
   - Use MetaABI
   - Batch operations

3. Best Practices
   - Check compatibility
   - Handle memory properly
   - Release objects
   - Validate frames

4. Restrictions
   - MetaABI requirements
   - Size limitations
   - Storage rules
