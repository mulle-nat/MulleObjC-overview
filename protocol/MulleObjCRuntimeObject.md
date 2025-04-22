# MulleObjCRuntimeObject

The `MulleObjCRuntimeObject` protocol defines the core runtime functionality for objects in mulle-objc. This is the base protocol that all objects must implement.

## Required Methods

### Object Information
- [`-class`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+class+of+MulleObjCRuntimeObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/MulleObjCRuntimeObject.h) - Get object's class
- [`-methodForSelector:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+methodForSelector+of+MulleObjCRuntimeObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/MulleObjCRuntimeObject.h) - Get method implementation

### Message Sending
- [`-performSelector:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+performSelector+of+MulleObjCRuntimeObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/MulleObjCRuntimeObject.h) - Perform selector
- [`-performSelector:withObject:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+performSelector:withObject+of+MulleObjCRuntimeObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/MulleObjCRuntimeObject.h) - With one argument
- [`-performSelector:withObject:withObject:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+performSelector:withObject:withObject+of+MulleObjCRuntimeObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/MulleObjCRuntimeObject.h) - With two arguments

### Protocol Support
- [`-conformsToProtocol:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+conformsToProtocol+of+MulleObjCRuntimeObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/MulleObjCRuntimeObject.h) - Check protocol conformance
- [`-respondsToSelector:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+respondsToSelector+of+MulleObjCRuntimeObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/MulleObjCRuntimeObject.h) - Check method availability

### Thread Safety
- [`-mulleIsThreadSafe`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+mulleIsThreadSafe+of+MulleObjCRuntimeObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/MulleObjCRuntimeObject.h) - Check thread safety
- [`-mulleIsAccessible`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+mulleIsAccessible+of+MulleObjCRuntimeObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/MulleObjCRuntimeObject.h) - Check accessibility

## Helper Functions

- [`MulleObjCObjectGetClass`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCObjectGetClass+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/MulleObjCRuntimeObject.h) - Get object's class
- [`MulleObjCObjectGetMethodForSelector`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCObjectGetMethodForSelector+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/MulleObjCRuntimeObject.h) - Get method implementation
- [`MulleObjCObjectConformsTo`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCObjectConformsTo+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/MulleObjCRuntimeObject.h) - Check protocol conformance

## Important Notes

1. Core Protocol
   - Base functionality
   - Required methods
   - Runtime support
   - Thread safety

2. Thread Safety
   - Check thread affinity
   - Handle concurrent access
   - Use proper locks
   - Consider TAO rules

3. Best Practices
   - Validate objects
   - Handle nil cases
   - Document usage
   - Test thoroughly

4. Performance
   - Cache lookups
   - Minimize locks
   - Consider inlining
   - Handle contention

Note: This protocol provides the minimal runtime functionality required for all objects in mulle-objc. It is typically implemented by root classes like NSObject.
