# MulleObjCPrinting Functions

Functions for object printing and description in mulle-objc.

## Printing Functions

### Basic Printing
```c
// Print to stderr with format
void mulle_fprintf(FILE *fp, char *format, ...);

// Print warning message
void mulle_objc_warn_printf(char *format, ...);

// Print class name
char *MulleObjCObjectGetClassNameUTF8String(id obj);
```

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
