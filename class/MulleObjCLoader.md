# MulleObjCLoader

Class that manages class and category dependencies, ensuring proper initialization order across frameworks.

## Base Class
NSObject

## Methods

### Dependency Management
- [`+dependencies`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+dependencies+of+MulleObjCLoader+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleObjCLoader.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleObjCLoader.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Returns array of dependencies
- [`+loadversion`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+loadversion+of+MulleObjCLoader+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleObjCLoader.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleObjCLoader.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Returns version requirements

### Load Control
- [`+load`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+load+of+MulleObjCLoader+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleObjCLoader.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleObjCLoader.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Performs loading
- [`+unload`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+unload+of+MulleObjCLoader+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleObjCLoader.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleObjCLoader.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Performs unloading

## Usage Example

```objc
// Define framework loader
@interface MyFrameworkLoader : MulleObjCLoader
@end

@implementation MyFrameworkLoader

+ (struct _mulle_objc_dependency *) dependencies
{
    static struct _mulle_objc_dependency   dependencies[] =
    {
       { @"Foundation", MULLE_OBJC_NO_VERSION, MULLE_OBJC_NO_VERSION },
       { NULL, MULLE_OBJC_NO_VERSION, MULLE_OBJC_NO_VERSION }
    };
    return dependencies;
}

@end

// Define category loader
@interface NSString_MyAdditions_Loader : MulleObjCLoader
@end

@implementation NSString_MyAdditions_Loader

+ (struct _mulle_objc_dependency *) dependencies
{
    static struct _mulle_objc_dependency   dependencies[] =
    {
       { @"NSString", MULLE_OBJC_NO_VERSION, MULLE_OBJC_NO_VERSION },
       { NULL, MULLE_OBJC_NO_VERSION, MULLE_OBJC_NO_VERSION }
    };
    return dependencies;
}

@end
```

## Important Notes

1. Dependency Management
   - Order dependencies properly
   - Specify version requirements
   - Document dependencies

2. Load Management
   - Handle load failures
   - Clean up resources
   - Validate dependencies

3. Performance
   - Minimize load time
   - Optimize dependencies
   - Cache when possible

4. Thread Safety
   - Load-time synchronization
   - Resource protection
   - State management

5. Error Handling
   - Load failures
   - Version mismatches
   - Missing dependencies
