# MulleDynamicObject

Base class that provides dynamic property support in mulle-objc. Enables dynamic property access and automatic method generation for property accessors.

## Base Class
NSObject

## Instance Variables
```objc
struct mulle__pointermap   __ivars;  // Maps property names to values
```

## Methods

### Initialization
- [`-init`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+init+of+MulleDynamicObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleDynamicObject.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleDynamicObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Initializes the dynamic property storage

### Dynamic Property Support
- [`-forward:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+forward+of+MulleDynamicObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleDynamicObject.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleDynamicObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Handles dynamic property access and method generation
- [`+isFullyDynamic`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+isFullyDynamic+of+MulleDynamicObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleDynamicObject.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleDynamicObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Returns NO by default, can be overridden to enable fully dynamic mode

### Internal Support
- [`_MulleDynamicObjectValueSetter`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+_MulleDynamicObjectValueSetter+of+MulleDynamicObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleDynamicObject.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleDynamicObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Sets value for dynamic property
- [`_MulleDynamicObjectNumberSetter`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+_MulleDynamicObjectNumberSetter+of+MulleDynamicObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleDynamicObject.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleDynamicObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Sets number value for dynamic property
- [`_MulleDynamicObjectValueGetter`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+_MulleDynamicObjectValueGetter+of+MulleDynamicObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleDynamicObject.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleDynamicObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Gets value from dynamic property
- [`_MulleDynamicObjectForward`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+_MulleDynamicObjectForward+of+MulleDynamicObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleDynamicObject.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleDynamicObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Helper function for subclasses implementing forward:

## Usage Example

```objc
// Create dynamic object with property
@interface MyDynamic : MulleDynamicObject
@property(dynamic) NSString *name;
@end

@implementation MyDynamic
@dynamic name;
@end

// Use dynamic property
MyDynamic *obj = [MyDynamic new];
obj.name = @"Hello";  // Uses dynamic setter
NSString *name = obj.name;  // Uses dynamic getter
```

## Important Notes

1. Property Types
   - Supports primitive types through NSNumber wrapping
   - Handles object properties with retain/copy/assign semantics
   - Manages strings with strdup/free
   - Supports NSValue for structs/unions

2. Implementation Details
   - Creates accessor methods on demand
   - Caches property lookups for performance
   - Handles memory management automatically
   - Supports property observation

3. Memory Management
   - Automatically releases stored objects
   - Manages memory for C strings
   - Cleans up in dealloc/finalize

4. Restrictions
   - Cannot retain variadic method arguments
   - Cannot retain unions containing id or char*
   - Fully dynamic mode requires NSValue/NSNumber support

5. Generic Types
```objc
typedef NS_ENUM(NSInteger, MulleObjCGenericType)
{
    MulleObjCGenericTypeVoidPointer = 0,  // as is
    MulleObjCGenericTypeStrdup,           // strdup/free
    MulleObjCGenericTypeAssign,           // just like void pointer
    MulleObjCGenericTypeRetain,           // retain/autorelease
    MulleObjCGenericTypeCopy,             // copy/autorelease
    MulleObjCGenericTypeValue,            // wrap into NSValue
    MulleObjCGenericTypeNumber            // wrap into NSNumber
};
```
