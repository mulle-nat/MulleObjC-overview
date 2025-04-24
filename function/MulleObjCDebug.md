# MulleObjCDebug

Functions for debugging and runtime inspection.

## Print Functions

- [`_NSPrintForDebugger`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+_NSPrintForDebugger+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/function/MulleObjCDebug.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/function/MulleObjCDebug.h) - Prints object description for debugger
- [`mulle_fprintf`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+mulle_fprintf+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/function/MulleObjCDebug.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/function/MulleObjCDebug.h) - Prints formatted text to file
- [`mulle_objc_warn_printf`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+mulle_objc_warn_printf+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/function/MulleObjCDebug.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/function/MulleObjCDebug.h) - Prints warning message

## Environment Functions

- [`mulle_objc_environment_get_int`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+mulle_objc_environment_get_int+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/function/MulleObjCDebug.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/function/MulleObjCDebug.h) - Gets environment variable as integer
- [`mulle_objc_environment_get_yes_no`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+mulle_objc_environment_get_yes_no+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/function/MulleObjCDebug.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/function/MulleObjCDebug.h) - Gets environment variable as boolean

## Dump Functions

- [`MulleObjCHTMLDumpUniverse`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCHTMLDumpUniverse+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/function/MulleObjCDebug.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/function/MulleObjCDebug.h) - Creates HTML dump of universe in current directory
- [`MulleObjCDotdumpClass`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCDotdumpClass+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/function/MulleObjCDebug.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/function/MulleObjCDebug.h) - Creates DOT graph of class
- [`MulleObjCDumpObject`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCDumpObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/function/MulleObjCDebug.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/function/MulleObjCDebug.h) - Prints object details to stderr

## Usage Example

```objc
// Print debug info for object
id obj = self;
_NSPrintForDebugger(obj);

// Check debug environment variable
if (mulle_objc_environment_get_yes_no("MULLE_OBJC_TRACE_INSTANCE"))
{
   MulleObjCDumpObject(obj);
}
```

## Important Notes

1. Debug Support
   - Functions only available when MULLE_OBJC_DEBUG_SUPPORT is defined
   - Output goes to stderr by default
   - HTML/DOT dumps require external tools to view

2. Environment Variables
   - MULLE_OBJC_TRACE_INSTANCE - Trace instance creation/destruction
   - MULLE_OBJC_TRACE_METHOD_CALL - Trace method calls
   - MULLE_OBJC_TRACE_UNIVERSE - Trace universe operations
