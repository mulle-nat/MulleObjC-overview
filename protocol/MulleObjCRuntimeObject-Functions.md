# MulleObjCRuntimeObject Functions

Functions for runtime object operations in mulle-objc.

## Runtime Operations

### Object Information
- [`MulleObjCObjectGetClass`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCObjectGetClass+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCRuntimeObject.h) - Get object's class
- [`MulleObjCObjectGetClassId`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCObjectGetClassId+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCRuntimeObject.h) - Get object's class ID
- [`MulleObjCObjectGetInfraClass`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCObjectGetInfraClass+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCRuntimeObject.h) - Get object's infrastructure class

### Method Operations
- [`MulleObjCObjectGetMethodForSelector`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCObjectGetMethodForSelector+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCRuntimeObject.h) - Get method implementation
- [`MulleObjCObjectGetMethodForSelectorId`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCObjectGetMethodForSelectorId+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCRuntimeObject.h) - Get method by selector ID

### Protocol Operations
- [`MulleObjCObjectConformsTo`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCObjectConformsTo+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCRuntimeObject.h) - Check protocol conformance
- [`MulleObjCObjectConformsToProtocolId`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCObjectConformsToProtocolId+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCRuntimeObject.h) - Check by protocol ID

### Message Sending
- [`MulleObjCObjectPerformSelector`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCObjectPerformSelector+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCRuntimeObject.h) - Perform selector
- [`MulleObjCObjectPerformSelector_2`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCObjectPerformSelector_2+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCRuntimeObject.h) - With one argument
- [`MulleObjCObjectPerformSelector_3`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCObjectPerformSelector_3+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCRuntimeObject.h) - With two arguments

### Thread Safety
- [`MulleObjCObjectIsThreadSafe`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCObjectIsThreadSafe+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCRuntimeObject.h) - Check thread safety
- [`MulleObjCObjectIsAccessible`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCObjectIsAccessible+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCRuntimeObject.h) - Check accessibility

## Important Notes

1. Object Lifecycle
   - Initialize properly
   - Clean up resources
   - Handle errors
   - Check state

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
