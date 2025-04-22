# NSInvocation

Encapsulates an Objective-C message (method call) that can be stored and invoked later. Supports variable arguments and MetaABI.

## Base Class
NSObject

## Instance Variables
```objc
NSMethodSignature   *_methodSignature;    // Method type information
char               *_storage;             // Argument storage
char               *_sentinel;            // Storage bounds check
char                _argumentsRetained;   // Arguments retention flag
char                _returnValueRetained; // Return value retention flag
```

## Methods

### Creation
- [`+invocationWithMethodSignature:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+invocationWithMethodSignature+of+NSInvocation+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSInvocation.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSInvocation.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Creates invocation from signature
- [`+mulleInvocationWithTarget:selector:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+mulleInvocationWithTarget:selector+of+NSInvocation+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSInvocation.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSInvocation.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Creates with target/selector
- [`+mulleInvocationWithTarget:selector:object:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+mulleInvocationWithTarget:selector:object+of+NSInvocation+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSInvocation.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSInvocation.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Creates with single argument
- [`+mulleInvocationWithTarget:selector:metaABIFrame:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+mulleInvocationWithTarget:selector:metaABIFrame+of+NSInvocation+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSInvocation.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSInvocation.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Creates with MetaABI frame

### Arguments
- [`-getArgument:atIndex:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+getArgument:atIndex+of+NSInvocation+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSInvocation.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSInvocation.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Gets argument value
- [`-setArgument:atIndex:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+setArgument:atIndex+of+NSInvocation+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSInvocation.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSInvocation.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Sets argument value
- [`-retainArguments`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+retainArguments+of+NSInvocation+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSInvocation.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSInvocation.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Retains object arguments
- [`-argumentsRetained`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+argumentsRetained+of+NSInvocation+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSInvocation.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSInvocation.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Checks if arguments retained

### Target/Selector
- [`-target`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+target+of+NSInvocation+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSInvocation.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSInvocation.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Gets target object
- [`-setTarget:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+setTarget+of+NSInvocation+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSInvocation.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSInvocation.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Sets target object
- [`-selector`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+selector+of+NSInvocation+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSInvocation.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSInvocation.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Gets selector
- [`-setSelector:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+setSelector+of+NSInvocation+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSInvocation.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSInvocation.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Sets selector

### Invocation
- [`-invoke`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+invoke+of+NSInvocation+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSInvocation.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSInvocation.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Invokes on current target
- [`-invokeWithTarget:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+invokeWithTarget+of+NSInvocation+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSInvocation.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSInvocation.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Invokes on specified target

### Return Value
- [`-getReturnValue:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+getReturnValue+of+NSInvocation+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSInvocation.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSInvocation.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Gets return value
- [`-setReturnValue:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+setReturnValue+of+NSInvocation+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSInvocation.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSInvocation.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Sets return value
- [`-mulleRetainReturnValue`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+mulleRetainReturnValue+of+NSInvocation+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSInvocation.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSInvocation.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Retains return value
- [`-mulleReturnValueRetained`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+mulleReturnValueRetained+of+NSInvocation+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSInvocation.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSInvocation.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Checks if return value retained
- [`-mulleIntReturnValue`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+mulleIntReturnValue+of+NSInvocation+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSInvocation.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSInvocation.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Gets integer return value

## Usage Example

```objc
// Create invocation
NSMethodSignature *sig = [target methodSignatureForSelector:@selector(doWork:)];
NSInvocation *inv = [NSInvocation invocationWithMethodSignature:sig];
[inv setTarget:target];
[inv setSelector:@selector(doWork:)];

// Set arguments
id arg = @"data";
[inv setArgument:&arg atIndex:2];  // 0=self, 1=_cmd, 2=first arg

// Retain arguments if needed
[inv retainArguments];

// Invoke
[inv invoke];

// Get return value
id result;
[inv getReturnValue:&result];
```

## Important Notes

1. Memory Management
   - Arguments not retained by default
   - Use retainArguments for object arguments
   - Return values not retained by default
   - Clean up retained values properly

2. Argument Indexing
   - Index 0 is self (target)
   - Index 1 is _cmd (selector)
   - User arguments start at index 2

3. MetaABI Support
   - Supports mulle-objc MetaABI
   - Efficient parameter passing
   - Frame-based invocation

4. Thread Safety
   - Not thread-safe by default
   - Synchronize access when shared
   - Consider thread affinity

5. Performance
   - More overhead than direct calls
   - Cache invocations when possible
   - Use for dynamic dispatch needs
