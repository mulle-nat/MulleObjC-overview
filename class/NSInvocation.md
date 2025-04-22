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
- `+invocationWithMethodSignature:` - Creates invocation from signature
- `+mulleInvocationWithTarget:selector:` - Creates with target/selector
- `+mulleInvocationWithTarget:selector:object:` - Creates with single argument
- `+mulleInvocationWithTarget:selector:metaABIFrame:` - Creates with MetaABI frame

### Arguments
- `-getArgument:atIndex:` - Gets argument value
- `-setArgument:atIndex:` - Sets argument value
- `-retainArguments` - Retains object arguments
- `-argumentsRetained` - Checks if arguments retained

### Target/Selector
- `-target` - Gets target object
- `-setTarget:` - Sets target object
- `-selector` - Gets selector
- `-setSelector:` - Sets selector

### Invocation
- `-invoke` - Invokes on current target
- `-invokeWithTarget:` - Invokes on specified target

### Return Value
- `-getReturnValue:` - Gets return value
- `-setReturnValue:` - Sets return value
- `-mulleRetainReturnValue` - Retains return value
- `-mulleReturnValueRetained` - Checks if return value retained
- `-mulleIntReturnValue` - Gets integer return value

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
