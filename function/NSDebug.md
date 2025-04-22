# NSDebug Functions

Functions for debugging support in mulle-objc.

## Debug Support

### Print Functions
```c
// Print for debugger
void _NSPrintForDebugger(id obj);

// Print warning
void mulle_objc_warn_printf(char *format, ...);

// Print to stderr
void mulle_fprintf(FILE *fp, char *format, ...);
```

### Environment
```c
// Get debug settings
int mulle_objc_environment_get_int(char *name);
int mulle_objc_environment_get_yes_no(char *name);
```

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
