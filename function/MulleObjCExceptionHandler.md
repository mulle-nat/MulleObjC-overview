# MulleObjCExceptionHandler

Core exception handling functions for the MulleObjC runtime.

## Exception Functions

- `mulle_objc_throw(void *exception)` - Throws an exception through the runtime
- `mulle_objc_break_exception(void)` - Breakpoint function for catching all exceptions

## Handler Management

- `NSGetUncaughtExceptionHandler()` - Gets current uncaught exception handler
- `NSSetUncaughtExceptionHandler(NSUncaughtExceptionHandler *handler)` - Sets uncaught exception handler

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
