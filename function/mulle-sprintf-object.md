# mulle-sprintf-object

Functions for formatted string operations with objects in mulle-objc.

## Object Formatting

### Basic Formatting
```c
int mulle_sprintf_object(char *buf, size_t len, id obj);
int mulle_sprintf_object_description(char *buf, size_t len, id obj);
```

### Extended Formatting
```c
int mulle_sprintf_object_debug(char *buf, size_t len, id obj);
int mulle_sprintf_object_detailed(char *buf, size_t len, id obj);
```

## Format Specifiers

### Object Specifiers
```c
%@ - Object description
%p - Object pointer
%c - Class name
```

### Modifier Flags
```c
#define MULLE_SPRINTF_OBJECT_FLAG_DEBUG    0x01
#define MULLE_SPRINTF_OBJECT_FLAG_VERBOSE  0x02
```

## Buffer Management

### Safe Operations
```c
int mulle_sprintf_object_snprintf(char *buf, size_t len, const char *format, ...);
char *mulle_sprintf_object_asprintf(const char *format, ...);
```

## Best Practices

1. Check buffer sizes
2. Handle nil objects
3. Use appropriate format flags
4. Free allocated strings
5. Consider localization

## Notes

- Part of mulle-sprintf library
- Thread-safe operations
- Handles circular references
- Supports custom formatters
