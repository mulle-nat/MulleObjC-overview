# MulleObjCDebug

Functions and macros for debugging in mulle-objc.

## Debug Functions

### Object Validation
```c
BOOL MulleObjCObjectIsValid(id obj);
void MulleObjCValidateObject(id obj);
```

### Runtime Checks
```c
void MulleObjCCheckObjectHeader(id obj);
void MulleObjCCheckClassHeader(Class cls);
```

## Debug Logging

### Configuration
```c
void MulleObjCSetDebugEnabled(BOOL flag);
void MulleObjCSetDebugLevel(int level);
```

### Logging Functions
```c
void MulleObjCDebugLog(char *format, ...);
void MulleObjCDebugLogObject(id obj);
```

## Memory Debugging

### Allocation Tracking
```c
void MulleObjCTrackAllocation(id obj);
void MulleObjCUntrackAllocation(id obj);
```

### Leak Detection
```c
void MulleObjCPrintLeaks(void);
void MulleObjCCheckLeaks(void);
```

## Best Practices

1. Enable debugging in development builds
2. Use appropriate debug level for context
3. Validate objects in critical sections
4. Track allocations during memory investigations
5. Check for leaks in test suites

## Notes

- Debug functions may impact performance
- Some functions only available in debug builds
- Use NSDebug.h for higher-level debugging
- Consider using debugger integration
