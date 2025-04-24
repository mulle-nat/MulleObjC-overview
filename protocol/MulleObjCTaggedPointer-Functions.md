# MulleObjCTaggedPointer Functions

Functions for tagged pointer operations in mulle-objc. Tagged pointers are a memory optimization technique that stores small values directly in the pointer bits.

## Tagged Pointer Operations

### Basic Operations
- [`MulleObjCTaggedPointerCreate`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCTaggedPointerCreate+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCTaggedPointer.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCTaggedPointer.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Create tagged pointer
- [`MulleObjCTaggedPointerGetClass`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCTaggedPointerGetClass+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCTaggedPointer.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCTaggedPointer.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Get pointer class
- [`MulleObjCTaggedPointerGetIndex`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCTaggedPointerGetIndex+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCTaggedPointer.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCTaggedPointer.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Get pointer index

### Validation
- [`MulleObjCTaggedPointerIsValid`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCTaggedPointerIsValid+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCTaggedPointer.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCTaggedPointer.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Check validity
- [`MulleObjCTaggedPointerClassIsValid`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCTaggedPointerClassIsValid+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCTaggedPointer.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCTaggedPointer.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Check class validity

### Registration
- [`MulleObjCTaggedPointerRegisterClass`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCTaggedPointerRegisterClass+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCTaggedPointer.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCTaggedPointer.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Register class for tagging
- [`MulleObjCTaggedPointerUnregisterClass`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCTaggedPointerUnregisterClass+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCTaggedPointer.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCTaggedPointer.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Unregister class

## Usage Example

```objc
// Register class for tagging
MulleObjCTaggedPointerRegisterClass(MyClass);

// Create tagged pointer
id ptr = MulleObjCTaggedPointerCreate(MyClass, 42);

// Check validity
if (MulleObjCTaggedPointerIsValid(ptr)) {
    // Get stored value
    NSUInteger value = MulleObjCTaggedPointerGetIndex(ptr);
}
```

## Important Notes

1. Memory Layout
   - Bit patterns
   - Alignment rules
   - Platform specifics
   - Value ranges

2. Thread Safety
   - Thread-safe creation
   - Safe registration
   - Handle concurrent access
   - Consider TAO rules

3. Best Practices
   - Check validity
   - Handle errors
   - Document usage
   - Test thoroughly

4. Performance
   - Avoid allocation
   - Fast access
   - Consider inlining
   - Handle contention

Note: Tagged pointers are an optimization that avoids heap allocation for small values by storing them directly in pointer bits. This improves performance and reduces memory usage.
