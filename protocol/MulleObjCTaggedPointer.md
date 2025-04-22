# MulleObjCTaggedPointer

Protocol for implementing tagged pointer support in mulle-objc. Tagged pointers store small values directly in pointer bits to avoid heap allocation.

## Required Methods

### Value Access
- [`+mulleTaggedPointerClass`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+mulleTaggedPointerClass+of+MulleObjCTaggedPointer+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/MulleObjCTaggedPointer.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/MulleObjCTaggedPointer.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Get class for tagged pointer
- [`+mulleTaggedPointerFromIndex:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+mulleTaggedPointerFromIndex+of+MulleObjCTaggedPointer+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/MulleObjCTaggedPointer.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/MulleObjCTaggedPointer.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Create pointer from index
- [`-mulleTaggedPointerIndex`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+mulleTaggedPointerIndex+of+MulleObjCTaggedPointer+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/MulleObjCTaggedPointer.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/MulleObjCTaggedPointer.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Get index from pointer

### Validation
- [`+mulleIsTaggedPointerClass`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+mulleIsTaggedPointerClass+of+MulleObjCTaggedPointer+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/MulleObjCTaggedPointer.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/MulleObjCTaggedPointer.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Check if class supports tagging
- [`-mulleIsTaggedPointer`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+mulleIsTaggedPointer+of+MulleObjCTaggedPointer+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/MulleObjCTaggedPointer.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/MulleObjCTaggedPointer.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Check if instance is tagged pointer

## Helper Functions

- [`MulleObjCTaggedPointerCreate`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCTaggedPointerCreate+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/MulleObjCTaggedPointer.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/MulleObjCTaggedPointer.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Create tagged pointer
- [`MulleObjCTaggedPointerGetClass`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCTaggedPointerGetClass+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/MulleObjCTaggedPointer.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/MulleObjCTaggedPointer.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Get pointer class
- [`MulleObjCTaggedPointerGetIndex`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCTaggedPointerGetIndex+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/MulleObjCTaggedPointer.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/MulleObjCTaggedPointer.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Get pointer index

## Usage Example

```objc
@interface MyNumber : NSObject <MulleObjCTaggedPointer>
@end

@implementation MyNumber

+ (BOOL) mulleIsTaggedPointerClass
{
    return YES;
}

+ (instancetype) mulleTaggedPointerFromIndex:(NSUInteger)index
{
    return MulleObjCTaggedPointerCreate(self, index);
}

- (NSUInteger) mulleTaggedPointerIndex
{
    return MulleObjCTaggedPointerGetIndex(self);
}

@end

// Usage
id number = [MyNumber mulleTaggedPointerFromIndex:42];
NSUInteger value = [number mulleTaggedPointerIndex];
```

## Important Notes

1. Memory Layout
   - Bit patterns
   - Alignment rules
   - Platform specifics
   - Value ranges

2. Thread Safety
   - Thread-safe creation
   - Safe access
   - Handle concurrent use
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
