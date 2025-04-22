# MulleObjCIvar Functions

Functions for instance variable management in mulle-objc.

## Ivar Access

### Object Ivars
- [`_mulle_objc_object_set_object_inline`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+_mulle_objc_object_set_object_inline+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/MulleObjCIvar.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/MulleObjCIvar.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Set object ivar atomically
- [`_mulle_objc_object_set_nonatomic_inline`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+_mulle_objc_object_set_nonatomic_inline+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/MulleObjCIvar.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/MulleObjCIvar.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Set object ivar non-atomically

### Thread Access
- [`_mulle_objc_object_set_thread`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+_mulle_objc_object_set_thread+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/MulleObjCIvar.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/MulleObjCIvar.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Set thread affinity
- [`_mulle_objc_object_get_thread`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+_mulle_objc_object_get_thread+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/MulleObjCIvar.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/MulleObjCIvar.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Get thread affinity

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
