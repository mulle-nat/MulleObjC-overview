# NSObject

Root class for most Objective-C objects in mulle-objc. Provides fundamental object behavior and memory management.

## Base Class
MulleObject

## Implemented Protocols
- NSObject
- MulleObjCRuntimeObject
- MulleObjCClassCluster
- MulleObjCException
- MulleObjCTaggedPointer
- MulleObjCSingleton

## Methods

### Object Lifecycle
- [`+new`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+new+of+NSObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Creates and initializes instance
- [`+alloc`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+alloc+of+NSObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Allocates instance
- [`-init`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+init+of+NSObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Initializes instance
- [`-dealloc`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+dealloc+of+NSObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Deallocates instance
- [`-finalize`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+finalize+of+NSObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Called before deallocation

### Memory Management (Thread-safe)
- [`-retain`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+retain+of+NSObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Increments retain count
- [`-release`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+release+of+NSObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Decrements retain count
- [`-autorelease`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+autorelease+of+NSObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Adds to autorelease pool
- [`-retainCount`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+retainCount+of+NSObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Gets retain count
- [`-zone`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+zone+of+NSObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Returns NULL (zones deprecated)

### Class Information (Thread-safe)
- [`+class`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+class+of+NSObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Returns class object
- [`-class`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+class+of+NSObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Returns instance class
- [`-superclass`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+superclass+of+NSObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Returns superclass
- [`+superclass`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+superclass+of+NSObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Returns class's superclass
- [`-isKindOfClass:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+isKindOfClass+of+NSObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Checks class inheritance
- [`-isMemberOfClass:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+isMemberOfClass+of+NSObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Checks exact class match

### Method Handling (Thread-safe)
- [`-methodForSelector:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+methodForSelector+of+NSObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Gets method implementation
- [`+instanceMethodForSelector:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+instanceMethodForSelector+of+NSObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Gets class method implementation
- [`-respondsToSelector:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+respondsToSelector+of+NSObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Checks method existence
- [`-conformsToProtocol:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+conformsToProtocol+of+NSObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Checks protocol conformance
- [`-performSelector:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+performSelector+of+NSObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Invokes method

### Forwarding
- `-forward:` - Legacy forwarding (deprecated)
- `-forwardInvocation:` - Modern forwarding
- `-methodSignatureForSelector:` - Gets method signature for forwarding

### Description
- `-description` - Returns object description
- `-debugDescription` - Returns debug description
- `-mulleTestDescription` - Returns test-friendly description
- `-mulleDebugContents` - Returns internal state description

### Comparison (Thread-safe)
- `-hash` - Returns hash value
- `-isEqual:` - Checks equality
- `-self` - Returns self

### Thread Access (TAO)
- `-mulleIsThreadSafe` - Returns NO
- `-mulleIsAccessible` - Returns YES
- `-mulleIsAccessibleByThread:` - Checks thread access
- `-mulleTAOStrategy` - Returns TAO strategy
- `-mulleGainAccess` - Gains thread access
- `-mulleRelinquishAccess` - Relinquishes thread access

## Usage Example

```objc
// Basic object creation
id obj = [[NSObject alloc] init];
// or
id obj = [NSObject new];

// Memory management
[obj retain];
[obj release];
[obj autorelease];

// Method invocation
if ([obj respondsToSelector:@selector(someMethod)])
    [obj performSelector:@selector(someMethod)];

// Thread access (TAO)
if ([obj mulleIsAccessibleByThread:thread])
{
    [obj mulleGainAccess];
    // ... use object ...
    [obj mulleRelinquishAccess];
}
```

## Important Notes

1. Thread Safety
   - Memory management methods are thread-safe
   - Class/protocol introspection methods are thread-safe
   - Most other methods are not thread-safe by default

2. Implementation Details
   - Uses MulleObject for core functionality
   - Supports thread access optimization (TAO)
   - Implements multiple protocols for various behaviors

3. Memory Management
   - Manual retain/release/autorelease
   - No garbage collection
   - Zones are deprecated (always returns NULL)

4. Forwarding
   - Legacy forward: is deprecated
   - Use forwardInvocation: for modern forwarding
   - Must implement methodSignatureForSelector:
