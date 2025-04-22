# MulleObjCDebug

Functions for debugging and runtime inspection.

## Print Functions

- `_NSPrintForDebugger(id obj)` - Prints object description for debugger
- `mulle_fprintf(FILE *fp, char *format, ...)` - Prints formatted text to file
- `mulle_objc_warn_printf(char *format, ...)` - Prints warning message

## Environment Functions

- `mulle_objc_environment_get_int(char *name)` - Gets environment variable as integer
- `mulle_objc_environment_get_yes_no(char *name)` - Gets environment variable as boolean

## Dump Functions

- `MulleObjCHTMLDumpUniverse()` - Creates HTML dump of universe in current directory
- `MulleObjCDotdumpClass(char *classname)` - Creates DOT graph of class
- `MulleObjCDumpObject(id obj)` - Prints object details to stderr

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
