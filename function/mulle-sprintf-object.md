# mulle-sprintf-object Functions

Functions for object string formatting in mulle-objc.

## Formatting Functions

### Object Formatting
- [`mulle_sprintf_object_do_format_object`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+mulle_sprintf_object_do_format_object+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/function/mulle-sprintf-object.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/function/mulle-sprintf-object.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Format object description
- [`mulle_sprintf_register_object_functions`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+mulle_sprintf_register_object_functions+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/function/mulle-sprintf-object.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/function/mulle-sprintf-object.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Register formatters

## Important Notes

1. Formatting
   - Handle all types
   - Format properly
   - Check buffer space
   - Handle errors

2. Thread Safety
   - Thread-safe output
   - Handle concurrent access
   - Buffer appropriately
   - Clean up properly

3. Best Practices
   - Check buffer size
   - Handle NULL values
   - Format consistently
   - Document formats

4. Performance
   - Buffer output
   - Minimize allocations
   - Cache when possible
   - Clean up buffers
