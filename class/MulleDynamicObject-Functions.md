# MulleDynamicObject Functions

Functions for dynamic property support in mulle-objc.

## Property Management

### Value Setting
- [`_MulleDynamicObjectValueSetter`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+_MulleDynamicObjectValueSetter+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/MulleDynamicObject.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/MulleDynamicObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Set property value
- [`_MulleDynamicObjectNumberSetter`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+_MulleDynamicObjectNumberSetter+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/MulleDynamicObject.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/MulleDynamicObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Set number property
- [`_MulleDynamicObjectValueGetter`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+_MulleDynamicObjectValueGetter+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/MulleDynamicObject.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/MulleDynamicObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Get property value

## Property Analysis

### Type Information
- [`_MulleObjCGenericTypeOfProperty`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+_MulleObjCGenericTypeOfProperty+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/MulleDynamicObject.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/MulleDynamicObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Get property type
- [`_MulleObjCGenericTypeOfSignature`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+_MulleObjCGenericTypeOfSignature+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/MulleDynamicObject.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/MulleDynamicObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Get signature type
- [`_MulleObjCClassPointerSearchDynamicProperty`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+_MulleObjCClassPointerSearchDynamicProperty+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/MulleDynamicObject.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/MulleDynamicObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Find dynamic property

## Method Generation

### Accessor Creation
- [`_mulle_objc_infraclass_create_methods_for_property`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+_mulle_objc_infraclass_create_methods_for_property+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/MulleDynamicObject.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/MulleDynamicObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Create property methods

## Important Notes

1. Property Types
   - Handle all value types
   - Support objects
   - Manage memory
   - Check signatures

2. Method Generation
   - Create accessors
   - Handle selectors
   - Cache methods
   - Update classes

3. Best Practices
   - Validate types
   - Check properties
   - Handle errors
   - Cache lookups

4. Performance
   - Cache properties
   - Minimize searches
   - Reuse methods
