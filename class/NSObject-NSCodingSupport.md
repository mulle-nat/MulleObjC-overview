# NSObject NSCoding Support Functions

Functions for object serialization and coding in mulle-objc.

## Encoding Operations

### Basic Encoding
- [`NSEncodeObject`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSEncodeObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject-NSCodingSupport.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject-NSCodingSupport.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Encodes object
- [`NSEncodeRootObject`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSEncodeRootObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject-NSCodingSupport.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject-NSCodingSupport.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Encodes root object

### Conditional Encoding
- [`NSEncodeConditionalObject`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSEncodeConditionalObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject-NSCodingSupport.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject-NSCodingSupport.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Conditionally encodes object
- [`NSEncodeBycopy`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSEncodeBycopy+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject-NSCodingSupport.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject-NSCodingSupport.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Encodes by copying
- [`NSEncodeByref`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSEncodeByref+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject-NSCodingSupport.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject-NSCodingSupport.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Encodes by reference

## Decoding Operations

### Object Decoding
- [`NSDecodeObject`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSDecodeObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject-NSCodingSupport.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject-NSCodingSupport.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Decodes object
- [`NSDecodeRootObject`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSDecodeRootObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject-NSCodingSupport.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject-NSCodingSupport.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Decodes root object

### Class Handling
- [`NSDecodingClassForClassName`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSDecodingClassForClassName+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject-NSCodingSupport.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject-NSCodingSupport.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Gets decoding class
- [`NSSetDecodingClassForClassName`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSSetDecodingClassForClassName+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject-NSCodingSupport.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject-NSCodingSupport.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Sets decoding class

## Version Support

### Version Management
- [`NSClassVersionForCoder`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSClassVersionForCoder+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject-NSCodingSupport.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject-NSCodingSupport.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Gets class version
- [`NSSetClassVersionForCoder`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSSetClassVersionForCoder+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject-NSCodingSupport.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject-NSCodingSupport.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Sets class version

## Coding Helpers

### Type Encoding
- [`NSEncodeType`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSEncodeType+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject-NSCodingSupport.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject-NSCodingSupport.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Encodes type
- [`NSDecodeType`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSDecodeType+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject-NSCodingSupport.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject-NSCodingSupport.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Decodes type

## Best Practices

1. Handle version migration
2. Use conditional encoding appropriately
3. Implement proper class substitution
4. Consider backward compatibility
5. Document coding requirements

## Thread Safety

- Coding operations are not thread-safe
- Synchronize shared coder access
- Consider version conflicts
- Handle concurrent encoding
