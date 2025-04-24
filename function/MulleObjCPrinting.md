# MulleObjCPrinting Functions

Functions for object printing and description in mulle-objc.

## Printing Functions

### Basic Printing
- [`mulle_fprintf`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+mulle_fprintf+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/function/MulleObjCPrinting.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/function/MulleObjCPrinting.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Print to file with format
- [`mulle_objc_warn_printf`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+mulle_objc_warn_printf+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/function/MulleObjCPrinting.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/function/MulleObjCPrinting.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Print warning message
- [`MulleObjCObjectGetClassNameUTF8String`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCObjectGetClassNameUTF8String+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/function/MulleObjCPrinting.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/function/MulleObjCPrinting.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Get class name string

## Important Notes

1. Output Formatting
   - Handle NULL values
   - Format properly
   - Clean output
   - Consider encoding

2. Thread Safety
   - Thread-safe output
   - Handle concurrent prints
   - Buffer appropriately
   - Clean up properly

3. Best Practices
   - Use appropriate function
   - Check return values
   - Handle errors
   - Document format

4. Performance
   - Buffer output
   - Minimize allocations
   - Cache when possible
   - Clean up buffers
