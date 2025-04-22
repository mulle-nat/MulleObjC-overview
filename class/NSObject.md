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
- `+new` - Creates and initializes instance
- `+alloc` - Allocates instance
- `-init` - Initializes instance
- `-dealloc` - Deallocates instance
- `-finalize` - Called before deallocation

### Memory Management (Thread-safe)
- `-retain` - Increments retain count
- `-release` - Decrements retain count
- `-autorelease` - Adds to autorelease pool
- `-retainCount` - Gets retain count
- `-zone` - Returns NULL (zones deprecated)

### Class Information (Thread-safe)
- `+class` - Returns class object
- `-class` - Returns instance class
- `-superclass` - Returns superclass
- `+superclass` - Returns class's superclass
- `-isKindOfClass:` - Checks class inheritance
- `-isMemberOfClass:` - Checks exact class match

### Method Handling (Thread-safe)
- `-methodForSelector:` - Gets method implementation
- `+instanceMethodForSelector:` - Gets class method implementation
- `-respondsToSelector:` - Checks method existence
- `-conformsToProtocol:` - Checks protocol conformance
- `-performSelector:` - Invokes method
- `-performSelector:withObject:` - Invokes method with argument
- `-performSelector:withObject:withObject:` - Invokes with two arguments

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
