# MulleObjCExceptionHandler

Functions and macros for exception handling in mulle-objc.

## Exception Throwing Macros

- `MulleObjCThrowInvalidArgumentException(format, ...)` - Throws exception for invalid arguments with formatted message
- `MulleObjCThrowInternalInconsistencyException(format, ...)` - Throws exception for internal inconsistencies
- `MulleObjCThrowErrnoException(format, ...)` - Throws exception based on current errno value
- `MulleObjCThrowInvalidIndexException(index)` - Throws exception for invalid array/collection index

## Uncaught Exception Handlers

- `NSGetUncaughtExceptionHandler()` - Gets current uncaught exception handler
- `NSSetUncaughtExceptionHandler(NSUncaughtExceptionHandler *handler)` - Sets uncaught exception handler

Note: These macros provide a convenient way to throw standard exceptions with proper formatting and context. They are the preferred way to signal errors in mulle-objc code.
