# MulleObjCHashFunctions

Core functions for hash computation in mulle-objc.

## Hash Functions

### String Hashing
- [`mulle_objc_uniqueid_from_string`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+mulle_objc_uniqueid_from_string+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/MulleObjCHashFunctions.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/MulleObjCHashFunctions.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Hash UTF8 string
- [`mulle_objc_methodid_from_string`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+mulle_objc_methodid_from_string+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/MulleObjCHashFunctions.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/MulleObjCHashFunctions.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Hash method name
- [`mulle_objc_classid_from_string`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+mulle_objc_classid_from_string+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/MulleObjCHashFunctions.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/MulleObjCHashFunctions.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Hash class name

### Pointer Hashing
- [`_mulle_objc_object_hash`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+_mulle_objc_object_hash+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/MulleObjCHashFunctions.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/MulleObjCHashFunctions.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Hash pointer value
- [`_mulle_objc_object_hash_inline`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+_mulle_objc_object_hash_inline+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/MulleObjCHashFunctions.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/MulleObjCHashFunctions.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Hash pointer with mask

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
