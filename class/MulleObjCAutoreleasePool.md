# MulleObjCAutoreleasePool

Core class providing autorelease functionality and utilities in mulle-objc.

## Functions

### Object Autoreleasing
- [`_MulleObjCAutoreleaseObject`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+_MulleObjCAutoreleaseObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleObjCAutoreleasePool.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleObjCAutoreleasePool.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Autoreleases a single object
- [`_MulleObjCAutoreleaseObjects`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+_MulleObjCAutoreleaseObjects+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleObjCAutoreleasePool.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleObjCAutoreleasePool.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Autoreleases multiple objects
- [`_MulleObjCAutoreleaseSpacedObjects`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+_MulleObjCAutoreleaseSpacedObjects+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleObjCAutoreleasePool.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleObjCAutoreleasePool.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Autoreleases objects with stride

### Pool Configuration
- [`_mulle_objc_poolconfiguration_init`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+_mulle_objc_poolconfiguration_init+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleObjCAutoreleasePool.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleObjCAutoreleasePool.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Initializes pool configuration
- [`_mulle_objc_poolconfiguration_reset`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+_mulle_objc_poolconfiguration_reset+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleObjCAutoreleasePool.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleObjCAutoreleasePool.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Resets pool configuration
- [`_mulle_objc_poolconfiguration_done`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+_mulle_objc_poolconfiguration_done+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleObjCAutoreleasePool.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleObjCAutoreleasePool.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Cleans up pool configuration

### Thread Management
- [`mulle_objc_thread_new_poolconfiguration`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+mulle_objc_thread_new_poolconfiguration+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleObjCAutoreleasePool.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleObjCAutoreleasePool.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Creates new thread pool configuration
- [`mulle_objc_thread_reset_poolconfiguration`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+mulle_objc_thread_reset_poolconfiguration+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleObjCAutoreleasePool.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleObjCAutoreleasePool.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Resets thread pool configuration
- [`mulle_objc_thread_done_poolconfiguration`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+mulle_objc_thread_done_poolconfiguration+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleObjCAutoreleasePool.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleObjCAutoreleasePool.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Cleans up thread pool configuration

## Usage Example

```objc
// Autorelease objects
id obj = _MulleObjCAutoreleaseObject(someObject);

// Batch autorelease
id objects[3] = {obj1, obj2, obj3};
_MulleObjCAutoreleaseObjects(objects, 3, universe);

// Thread pool management
struct _mulle_objc_poolconfiguration *config;
config = mulle_objc_thread_new_poolconfiguration(universe);
// ... use pool ...
mulle_objc_thread_done_poolconfiguration(universe);
```

## Important Notes

1. Thread Safety
   - Per-thread configurations
   - Proper initialization/cleanup
   - Coroutine handling

2. Performance
   - Batch operations when possible
   - Efficient pool hierarchy
   - Minimize memory overhead

3. Memory Management
   - Initialize pools properly
   - Clean up pools when done
   - Handle nested pools correctly

4. Error Handling
   - Proper initialization
   - Cleanup handling
   - Error conditions

5. Best Practices
   - Use thread-local configurations
   - Manage thread lifecycles
   - Handle coroutine cases
