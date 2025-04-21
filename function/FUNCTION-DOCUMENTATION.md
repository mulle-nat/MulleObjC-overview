# MulleObjC Functions

This document outlines the core functions available in MulleObjC for object manipulation, method invocation, and runtime operations.

## Core Functions

* [MulleObjCAllocation](MulleObjCAllocation.md) - Object allocation and deallocation functions
* [MulleObjCDebug](MulleObjCDebug.md) - Debugging support functions
* [MulleObjCExceptionHandler](MulleObjCExceptionHandler.md) - Exception handling functions
* [MulleObjCHashFunctions](MulleObjCHashFunctions.md) - Hash calculation utilities
* [MulleObjCIvar](MulleObjCIvar.md) - Instance variable manipulation
* [MulleObjCPrinting](MulleObjCPrinting.md) - Object printing utilities
* [MulleObjCProperty](MulleObjCProperty.md) - Property access and manipulation
* [MulleObjCStackFrame](MulleObjCStackFrame.md) - Stack frame utilities
* [NSByteOrder](NSByteOrder.md) - Byte order conversion functions
* [NSDebug](NSDebug.md) - Debugging utilities
* [mulle-sprintf-object](mulle-sprintf-object.md) - Object formatting functions

## Object Property Access

### Value Getters and Setters
A comprehensive set of functions for getting and setting primitive values:

```c
// Example pair, similar pattern for other types
void MulleObjCObjectSetBOOL(id obj, SEL sel, BOOL value);
BOOL MulleObjCObjectGetBOOL(id obj, SEL sel);
```

Supported types include:
- BOOL, char, unsigned char
- short, unsigned short
- int, unsigned int
- long, unsigned long
- long long, unsigned long long
- NSInteger
- float, double, long double
- NSRange

## Method Invocation

### IMP Calling Helpers
Functions for invoking methods with varying numbers of arguments:

```c
id MulleObjCIMPCall0(IMP imp, id obj, SEL sel);
id MulleObjCIMPCall1(IMP imp, id obj, SEL sel, id arg);
// ... up to MulleObjCIMPCall5
```

### Perform Selector Functions
Higher-level method invocation helpers:

```c
id MulleObjCObjectPerformSelector0(id obj, SEL sel);
id MulleObjCObjectPerformSelector(id obj, SEL sel, id argument);
// ... up to MulleObjCObjectPerformSelector5
```

### Bulk Operations
```c
void MulleObjCMakeObjectsPerformSelector0(id *objects, NSUInteger n, SEL sel);
void MulleObjCMakeObjectsPerformSelector(id *objects, NSUInteger n, SEL sel, id arg);
```

## Runtime Support

### Class Operations
```c
BOOL MulleObjCClassImplementsSelector(Class aClass, SEL sel);
Class MulleObjCObjectGetClass(id obj);
void MulleObjCInstanceSetClass(id obj, Class cls);
```

### Thread Safety
```c
void MulleObjCInstanceSetThreadAffinity(id obj, mulle_thread_t thread);
void MulleObjCInstanceConstantify(id obj);
```

### Name and String Operations
```c
char *MulleObjCClassGetNameUTF8String(Class cls);
char *MulleObjCSelectorGetNameUTF8String(SEL sel);
char *MulleObjCProtocolGetNameUTF8String(PROTOCOL sel);
```

### Method Collection
```c
struct MulleObjCCollectionInfo MulleObjCCollectionInfoMake(Class stopClass, 
                                                          SEL sel, 
                                                          unsigned int inheritance);
```

### Property Operations
```c
struct _mulle_objc_property MulleObjCClassSearchProperty(Class cls, SEL propertyid);
struct _mulle_objc_property MulleObjCInstanceSearchProperty(id obj, SEL propertyid);
```

## Implementation Details

### Method Chaining
Functions for managing method implementation chains:
```c
void MulleObjCIMPArrayInitCategoryOnly(struct MulleObjCIMPArray *imps, 
                                      Class cls, 
                                      SEL sel, 
                                      struct mulle_allocator *allocator);
void MulleObjCIMPArrayCallReverse(struct MulleObjCIMPArray *imps, id obj, id argument);
```

### KVC Support
Functions for Key-Value Coding operations with various types:
```c
id MulleObjCIMPCallWithFloat(IMP imp, id obj, SEL sel, float argument);
float MulleObjCIMPCall0ReturningFloat(IMP imp, id obj, SEL sel);
// Similar pairs for other numeric types
```

## Best Practices

1. Use the highest-level function appropriate for your needs
2. Consider thread safety when using instance modification functions
3. Properly manage memory when using collection functions
4. Use bulk operations when performing actions on multiple objects
5. Check return values for error conditions

## Notes

- Most functions are inlined for performance
- Thread-safe functions are marked with `MULLE_OBJC_THREADSAFE_METHOD`
- Some functions are specific to the mulle-objc runtime implementation
- Property and method operations respect the Objective-C inheritance chain
