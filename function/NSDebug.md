# NSDebug Functions

Functions for debugging support in mulle-objc.

## Debug Support

### Print Functions
- [`_NSPrintForDebugger`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+_NSPrintForDebugger+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/NSDebug.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/NSDebug.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Print for debugger
- [`mulle_objc_warn_printf`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+mulle_objc_warn_printf+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/NSDebug.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/NSDebug.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Print warning
- [`mulle_fprintf`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+mulle_fprintf+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/NSDebug.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/NSDebug.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Print to stderr

### Environment
- [`mulle_objc_environment_get_int`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+mulle_objc_environment_get_int+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/NSDebug.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/NSDebug.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Get int setting
- [`mulle_objc_environment_get_yes_no`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+mulle_objc_environment_get_yes_no+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/NSDebug.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/NSDebug.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Get boolean setting

### Object Debugging
- [`MulleObjCIsDebugEnabled`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCIsDebugEnabled+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/NSDebug.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/NSDebug.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Check debug mode
- [`MulleObjCZombifyObject`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCZombifyObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/NSDebug.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/NSDebug.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Make object zombie

## Important Notes

1. Debug Features
   - Print readable output
   - Check environment
   - Handle NULL values
   - Format properly

2. Usage
   - Debug builds only
   - Check debug flags
   - Handle errors
   - Clean output

3. Best Practices
   - Use appropriate functions
   - Check return values
   - Handle all cases
   - Document usage

4. Environment
   - Check debug flags
   - Use proper variables
   - Handle defaults
   - Document settings
