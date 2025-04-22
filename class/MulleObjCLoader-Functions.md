# MulleObjCLoader Functions

Core functions for framework initialization and dependency management in mulle-objc.

## Loader Management

### Basic Operations
- [`MulleObjCLoaderInit`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCLoaderInit+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/MulleObjCLoader.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/MulleObjCLoader.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Initialize loader
- [`MulleObjCLoaderRegister`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCLoaderRegister+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/MulleObjCLoader.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/MulleObjCLoader.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Register loader
- [`MulleObjCLoaderLoadCategories`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCLoaderLoadCategories+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/MulleObjCLoader.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/MulleObjCLoader.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Load categories
- [`MulleObjCLoaderLoadClasses`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCLoaderLoadClasses+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/MulleObjCLoader.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/MulleObjCLoader.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Load classes

### Dependency Management
- [`MulleObjCLoaderAddDependency`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCLoaderAddDependency+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/MulleObjCLoader.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/MulleObjCLoader.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Add dependency
- [`MulleObjCLoaderRemoveDependency`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCLoaderRemoveDependency+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/MulleObjCLoader.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/MulleObjCLoader.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Remove dependency
- [`MulleObjCLoaderSetLoadPriority`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCLoaderSetLoadPriority+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/MulleObjCLoader.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/MulleObjCLoader.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Set load priority

## Important Notes

1. Load Order
   - Dependencies load first
   - Classes before categories
   - Handle circular deps
   - Respect load priorities

2. Thread Safety
   - Loading is not thread-safe
   - Initialize at startup
   - Single-threaded load
   - Handle static init

3. Best Practices
   - Declare dependencies
   - Check load status
   - Handle failures
   - Document requirements

4. Performance
   - Load once only
   - Cache load info
   - Minimize dependencies
   - Optimize startup
