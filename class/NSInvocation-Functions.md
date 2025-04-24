# NSInvocation Functions

Functions for working with method invocations in mulle-objc.

## Invocation Support

### Frame Management
- [`mulle_metaabi_sizeof_union`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+mulle_metaabi_sizeof_union+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSInvocation.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSInvocation.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Get frame size
- [`mulle_metaabi_is_voidptr_storage_compatible`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+mulle_metaabi_is_voidptr_storage_compatible+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSInvocation.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSInvocation.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Check pointer storage

## Memory Management

### Value Handling
- [`mulle_id_copy`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+mulle_id_copy+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSInvocation.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSInvocation.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Copy object values
- [`_mulle_objc_objects_release`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+_mulle_objc_objects_release+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSInvocation.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSInvocation.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Release objects

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
