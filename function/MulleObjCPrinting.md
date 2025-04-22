# MulleObjCPrinting

Functions for string formatting and printing.

## String Formatting

- `MulleObjC_asprintf(char *format, ...)` - Format string with varargs, returns autoreleased `char *`
- `MulleObjC_strdup(char *s)` - Duplicate string and autorelease

## Buffer Macros

- `mulle_buffer_do_autoreleased_string(name, allocator, s)` - Creates autoreleased string from buffer

Note: All returned strings are autoreleased. NULL format strings result in EINVAL error.
