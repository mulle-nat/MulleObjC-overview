# NSObject Functions

Core functions for object lifecycle and runtime operations in mulle-objc.

## Object Creation

### Instance Management
- [`_MulleObjCClassAllocateInstance`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+_MulleObjCClassAllocateInstance+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Create instance with extra bytes
- [`_MulleObjCClassAllocateNonZeroedObject`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+_MulleObjCClassAllocateNonZeroedObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Create non-zeroed instance
- [`_MulleObjCInstanceFree`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+_MulleObjCInstanceFree+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Free instance memory

## Memory Management

### Reference Counting
- [`_mulle_objc_object_retain`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+_mulle_objc_object_retain+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Retain object
- [`_mulle_objc_object_release`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+_mulle_objc_object_release+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Release object
- [`_mulle_objc_object_autorelease`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+_mulle_objc_object_autorelease+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Autorelease object

## Thread Access

### TAO (Thread Access Optimization)
- [`MulleObjCObjectIsOnMainThread`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCObjectIsOnMainThread+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Check if on main thread
- [`MulleObjCObjectIsAccessibleByThread`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCObjectIsAccessibleByThread+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Check thread access
- [`MulleObjCInstanceSetThreadAffinity`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCInstanceSetThreadAffinity+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Set thread affinity

## Runtime Information

### Class Access
- [`MulleObjCObjectGetClass`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCObjectGetClass+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Get object's class
- [`MulleObjCObjectGetClassNameUTF8String`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCObjectGetClassNameUTF8String+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Get class name
- [`_mulle_objc_object_get_universe`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+_mulle_objc_object_get_universe+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Get runtime universe

## Important Notes

1. Memory Management
   - Use high-level methods when possible
   - Handle retain/release properly
   - Consider autorelease pools

2. Thread Safety
   - Most functions are thread-safe
   - TAO ensures proper access
   - Check thread ownership

3. Best Practices
   - Cache class information
   - Handle memory properly
   - Check thread access
   - Use proper allocation

4. Performance
   - Inline functions available
   - Cache lookups when possible
   - Consider TAO overhead
