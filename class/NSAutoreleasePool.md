# NSAutoreleasePool

Manages temporary objects in mulle-objc. Provides automatic memory management through autorelease pools.

## Base Class
None (Root Class)

## Instance Variables
```objc
NSAutoreleasePool   *_owner;     // Parent pool
void                *_storage;    // Object storage
char                _mulleNameUTF8String[48];  // Pool name
```

## Methods

### Pool Management
- [`+alloc`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+alloc+of+NSAutoreleasePool+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSAutoreleasePool.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSAutoreleasePool.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Creates new pool
- [`+new`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+new+of+NSAutoreleasePool+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSAutoreleasePool.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSAutoreleasePool.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Creates and initializes pool
- [`-init`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+init+of+NSAutoreleasePool+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSAutoreleasePool.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSAutoreleasePool.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Initializes pool
- [`-drain`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+drain+of+NSAutoreleasePool+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSAutoreleasePool.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSAutoreleasePool.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Releases pool and contained objects
- [`-release`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+release+of+NSAutoreleasePool+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSAutoreleasePool.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSAutoreleasePool.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Releases pool
- [`-mulleReleaseAllPoolObjects`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+mulleReleaseAllPoolObjects+of+NSAutoreleasePool+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSAutoreleasePool.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSAutoreleasePool.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Releases all objects but keeps pool

### Object Management
- [`+addObject:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+addObject+of+NSAutoreleasePool+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSAutoreleasePool.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSAutoreleasePool.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Adds object to current pool
- [`-addObject:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+addObject+of+NSAutoreleasePool+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSAutoreleasePool.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSAutoreleasePool.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Adds object to this pool
- [`+mulleAddObjects:count:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+mulleAddObjects:count+of+NSAutoreleasePool+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSAutoreleasePool.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSAutoreleasePool.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Adds multiple objects
- [`-mulleAddObjects:count:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+mulleAddObjects:count+of+NSAutoreleasePool+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSAutoreleasePool.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSAutoreleasePool.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Adds multiple objects to this pool

### Pool Information
- [`+mulleDefaultAutoreleasePool`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+mulleDefaultAutoreleasePool+of+NSAutoreleasePool+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSAutoreleasePool.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSAutoreleasePool.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Gets current thread's top pool
- [`+mulleParentAutoreleasePool`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+mulleParentAutoreleasePool+of+NSAutoreleasePool+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSAutoreleasePool.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSAutoreleasePool.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Gets parent of current pool
- [`-mulleParentAutoreleasePool`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+mulleParentAutoreleasePool+of+NSAutoreleasePool+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSAutoreleasePool.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSAutoreleasePool.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Gets parent pool
- [`-mulleNameUTF8String`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+mulleNameUTF8String+of+NSAutoreleasePool+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSAutoreleasePool.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSAutoreleasePool.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Gets pool name
- [`-mulleSetNameUTF8String:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+mulleSetNameUTF8String+of+NSAutoreleasePool+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSAutoreleasePool.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSAutoreleasePool.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Sets pool name

### Object Queries
- [`-mulleContainsObject:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+mulleContainsObject+of+NSAutoreleasePool+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSAutoreleasePool.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSAutoreleasePool.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Checks if pool contains object
- [`-mulleCountObject:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+mulleCountObject+of+NSAutoreleasePool+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSAutoreleasePool.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSAutoreleasePool.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Counts object occurrences
- [`-mulleCount`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+mulleCount+of+NSAutoreleasePool+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSAutoreleasePool.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSAutoreleasePool.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Gets total object count

## Usage Example

```objc
// Create pool
NSAutoreleasePool *pool = [NSAutoreleasePool new];

// Use @autoreleasepool block (preferred)
@autoreleasepool {
    id obj = [[NSObject alloc] init];
    [obj autorelease];
}

// Manual pool management
NSAutoreleasePool *pool = [NSAutoreleasePool new];
id obj = [[NSObject alloc] init];
[obj autorelease];
[pool drain];

// Add objects directly
[NSAutoreleasePool addObject:obj];

// Check pool contents
BOOL hasObj = [pool mulleContainsObject:obj];
NSUInteger count = [pool mulleCountObject:obj];
```

## Important Notes

1. Thread Safety
   - Each thread has its own pool stack
   - Thread-safe for basic operations
   - Pool operations are thread-local

2. Memory Management
   - Pools form a stack (LIFO)
   - Objects released when pool drains
   - Supports nested pools
   - Automatic cleanup on thread exit

3. Implementation Details
   - Not a subclass of NSObject
   - Direct root class implementation
   - Optimized for performance
   - Supports debugging features

4. Best Practices
   - Use @autoreleasepool when possible
   - Keep pool scope as narrow as needed
   - Don't retain pool objects externally
   - Clean up pools in reverse order

5. Debugging Support
   - Named pools for tracking
   - Object counting and verification
   - Pool hierarchy inspection
   - CSV dump capabilities
