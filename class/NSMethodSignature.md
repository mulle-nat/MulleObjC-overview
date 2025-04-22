# NSMethodSignature

Provides type information about method arguments and return values. Supports MetaABI and method frame layout.

## Base Class
NSObject

## Implemented Protocols
- MulleObjCImmutableProtocols
- NSCopying

## Instance Variables
```objc
uint32_t                            _bits;    // Method descriptor bits
uint16_t                            _count;   // Number of types
uint16_t                            _extra;   // Extra storage size
char                               *_types;   // Type encodings
MulleObjCMethodSignatureTypeInfo   *_infos;  // Type information
```

## Methods

### Creation
- [`+signatureWithObjCTypes:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+signatureWithObjCTypes+of+NSMethodSignature+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSMethodSignature.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSMethodSignature.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Creates signature from type string
- [`+_signatureWithObjCTypes:descriptorBits:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+_signatureWithObjCTypes:descriptorBits+of+NSMethodSignature+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSMethodSignature.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSMethodSignature.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Internal creation method

### Method Information
- [`-isOneway`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+isOneway+of+NSMethodSignature+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSMethodSignature.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSMethodSignature.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Checks if method is oneway
- [`-isVariadic`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+isVariadic+of+NSMethodSignature+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSMethodSignature.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSMethodSignature.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Checks if method has variable arguments
- [`-_descriptorBits`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+_descriptorBits+of+NSMethodSignature+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSMethodSignature.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSMethodSignature.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Gets method descriptor bits
- [`-frameLength`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+frameLength+of+NSMethodSignature+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSMethodSignature.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSMethodSignature.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Gets frame storage length
- [`-mulleMetaABIFrameLength`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+mulleMetaABIFrameLength+of+NSMethodSignature+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSMethodSignature.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSMethodSignature.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Gets MetaABI frame length

### Type Information
- [`-methodReturnLength`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+methodReturnLength+of+NSMethodSignature+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSMethodSignature.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSMethodSignature.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Gets return value size
- [`-methodReturnType`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+methodReturnType+of+NSMethodSignature+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSMethodSignature.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSMethodSignature.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Gets return value type
- [`-getArgumentTypeAtIndex:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+getArgumentTypeAtIndex+of+NSMethodSignature+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSMethodSignature.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSMethodSignature.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Gets argument type at index
- [`-numberOfArguments`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+numberOfArguments+of+NSMethodSignature+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSMethodSignature.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSMethodSignature.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Gets total argument count
- [`-mulleSignatureTypeInfoAtIndex:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+mulleSignatureTypeInfoAtIndex+of+NSMethodSignature+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSMethodSignature.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSMethodSignature.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Gets type info at index

### MetaABI Support
- [`-_methodMetaABIReturnType`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+_methodMetaABIReturnType+of+NSMethodSignature+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSMethodSignature.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSMethodSignature.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Gets MetaABI return type
- [`-_methodMetaABIParameterType`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+_methodMetaABIParameterType+of+NSMethodSignature+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSMethodSignature.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSMethodSignature.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Gets MetaABI parameter type
- [`-mulleInvocationSize`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+mulleInvocationSize+of+NSMethodSignature+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSMethodSignature.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSMethodSignature.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Gets required invocation storage size

## Usage Example

```objc
// Get method signature
NSMethodSignature *sig = [target methodSignatureForSelector:@selector(method:)];

// Check argument count
NSUInteger args = [sig numberOfArguments];  // Includes self and _cmd

// Get argument types
char *type = [sig getArgumentTypeAtIndex:2];  // First user argument

// Get return type
char *returnType = [sig methodReturnType];

// Check method properties
BOOL isOneway = [sig isOneway];
BOOL hasVarArgs = [sig isVariadic];

// Get sizes for allocation
NSUInteger frameSize = [sig frameLength];
NSUInteger metaABISize = [sig mulleMetaABIFrameLength];
```

## Important Notes

1. Type Encoding
   - Uses Objective-C type encodings
   - Includes method qualifiers
   - Supports complex types
   - Handles MetaABI types

2. Memory Layout
   - Provides frame layout info
   - Supports MetaABI optimization
   - Handles alignment requirements
   - Manages variable storage

3. Performance
   - Caches type information
   - Optimizes MetaABI access
   - Minimizes parsing overhead
   - Reuses type info objects

4. Thread Safety
   - Thread-safe for reading
   - Immutable after creation
   - Safe to share between threads

5. MetaABI Types
```objc
typedef enum {
    MulleObjCMetaABITypeVoid = 0,
    MulleObjCMetaABITypeVoidPointer = 1,
    MulleObjCMetaABITypeParameterBlock = 2
} MulleObjCMetaABIType;
```
