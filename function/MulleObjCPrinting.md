# MulleObjCPrinting

Functions for formatted output and object description in mulle-objc.

## Object Printing

### Basic Printing
```c
void MulleObjCPrintObject(id obj);
void MulleObjCPrintObjectWithFormat(id obj, char *format);
```

### Debug Printing
```c
void MulleObjCPrintObjectDebug(id obj);
void MulleObjCPrintObjectVerbose(id obj);
```

## Class Printing

### Class Information
```c
void MulleObjCPrintClass(Class cls);
void MulleObjCPrintClassHierarchy(Class cls);
```

### Method Lists
```c
void MulleObjCPrintClassMethods(Class cls);
void MulleObjCPrintInstanceMethods(Class cls);
```

## Specialized Printing

### Collection Printing
```c
void MulleObjCPrintArray(NSArray *array);
void MulleObjCPrintDictionary(NSDictionary *dict);
```

### Runtime Information
```c
void MulleObjCPrintMethodCache(Class cls);
void MulleObjCPrintIvarLayout(Class cls);
```

## Formatting Options

### Format Specifiers
```c
%@ - Object description
%p - Object pointer
%c - Class name
%m - Method name
```

## Best Practices

1. Use appropriate detail level
2. Consider output destination
3. Handle nil objects gracefully
4. Format for readability
5. Include context when needed

## Notes

- Most functions write to stdout
- Some functions may be expensive
- Consider buffering for large output
- Debug builds may provide more detail
