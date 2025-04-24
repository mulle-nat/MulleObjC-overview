# MulleObjCExceptionHandler

Core exception handling functions for the MulleObjC runtime.

## Exception Functions

- [`mulle_objc_throw`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+mulle_objc_throw+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/function/MulleObjCExceptionHandler.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/function/MulleObjCExceptionHandler.h) - Throws an exception through the runtime
- [`mulle_objc_break_exception`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+mulle_objc_break_exception+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/function/MulleObjCExceptionHandler.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/function/MulleObjCExceptionHandler.h) - Breakpoint function for catching all exceptions

## Handler Management

- [`NSGetUncaughtExceptionHandler`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSGetUncaughtExceptionHandler+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/function/MulleObjCExceptionHandler.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/function/MulleObjCExceptionHandler.h) - Gets current uncaught exception handler
- [`NSSetUncaughtExceptionHandler`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSSetUncaughtExceptionHandler+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/function/MulleObjCExceptionHandler.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/function/MulleObjCExceptionHandler.h) - Sets uncaught exception handler

## Usage Example

```objc
// Set custom handler
void MyExceptionHandler(id exception)
{
   fprintf(stderr, "Uncaught exception: %s\n", 
           [exception description]);
   abort();
}

NSSetUncaughtExceptionHandler(MyExceptionHandler);
```

## Important Notes

1. Thread Safety
   - Exception handling is thread-safe by design
   - Handlers are stored per-universe

2. Debugging
   - Set breakpoint on mulle_objc_break_exception to catch all exceptions
   - Handler is called before program termination
