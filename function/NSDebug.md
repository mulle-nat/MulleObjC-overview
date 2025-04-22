# NSDebug

High-level debugging functions and variables for mulle-objc applications.

## Debug Variables

### Memory Debugging

``` c
BOOL NSZombieEnabled;              // Enable zombie object detection
BOOL NSDebugEnabled;               // Enable debug checks
BOOL NSAutoreleaseFreedObjectCheckEnabled;  // Check autorelease of freed objects
```

### Allocation Tracking

``` c
BOOL NSKeepAllocationStatistics;   // Track allocation statistics
BOOL NSEnumeratorDebugEnabled;     // Debug collection enumerators
```

## Debug Functions

### Object Lifecycle

``` c
void NSDeallocateObject(id object);
void NSRecordAllocationEvent(unsigned eventCode, id object);
```

### Memory Analysis

``` c
void NSCountFrames(void);
void NSNameObject(id object, char *name);
```

## Conditional Compilation

### Debug Macros

``` c
#if NS_BLOCK_ASSERTIONS
    // Assertions disabled
#else
    // Assertions enabled
#endif
```

## Best Practices

1.  Enable appropriate debug flags during development
2.  Use conditional compilation for debug code
3.  Track object lifecycles in complex scenarios
4.  Monitor allocation statistics when optimizing
5.  Enable zombie detection for dangling pointer issues

## Notes

-   Some features may significantly impact performance
-   Debug variables should be set early in application lifecycle
-   Consider environment variable configuration
-   Use in conjunction with MulleObjCDebug functions
