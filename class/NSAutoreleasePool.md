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
- `+alloc` - Creates new pool
- `+new` - Creates and initializes pool
- `-init` - Initializes pool
- `-drain` - Releases pool and contained objects
- `-release` - Releases pool
- `-mulleReleaseAllPoolObjects` - Releases all objects but keeps pool

### Object Management
- `+addObject:` - Adds object to current pool
- `-addObject:` - Adds object to this pool
- `+mulleAddObjects:count:` - Adds multiple objects
- `-mulleAddObjects:count:` - Adds multiple objects to this pool

### Pool Information
- `+mulleDefaultAutoreleasePool` - Gets current thread's top pool
- `+mulleParentAutoreleasePool` - Gets parent of current pool
- `-mulleParentAutoreleasePool` - Gets parent pool
- `-mulleNameUTF8String` - Gets pool name
- `-mulleSetNameUTF8String:` - Sets pool name

### Object Queries
- `-mulleContainsObject:` - Checks if pool contains object
- `-mulleCountObject:` - Counts object occurrences
- `-mulleCount` - Gets total object count

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
