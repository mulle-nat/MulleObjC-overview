# MulleObjC Protocol System

The MulleObjC protocol system defines a hierarchy of protocols for thread safety, mutability, and object behavior guarantees.

## Thread Safety Protocols

### MulleObjCThreadSafe
Objects that can be safely accessed from multiple threads.

Optional Methods:
- `mulleIsThreadSafe` - Returns whether the object is thread-safe
- `mulleThreadSafeCopy` - Returns a thread-safe copy (returns self retained)

### MulleObjCThreadUnsafe
Default protocol for objects that must be accessed from a single thread.

Optional Methods:
- `mulleIsThreadSafe` - Returns whether the object is thread-safe (returns NO)

## Immutability Protocol

### MulleObjCImmutable
Objects whose internal state does not change after initialization.

Optional Methods:
- `copy` - Returns a copy of the object
- `immutableCopy` - Returns an immutable copy

## Value and Container Protocols

### MulleObjCValue
Empty marker protocol indicating the object is a value type.

### MulleObjCContainer
Empty marker protocol indicating the object is a container type.

### MulleObjCContainerProperty
Protocol for container property access.

Required Methods:
- `addObject:` - Adds an object to the container
- `removeObject:` - Removes an object from the container

## Memory Management Protocol

### MulleObjCPlaceboRetainCount
Optional protocol for objects with custom retain counting.

Optional Methods:
- `retain`
- `autorelease` 
- `release`
- `retainCount`
- `finalize`
- `dealloc`

## Protocol Combinations

The header provides convenient protocol combinations for common use cases:

- `MulleObjCValueProtocols`: For immutable value types
- `MulleObjCMutableValueProtocols`: For mutable value types  
- `MulleObjCContainerProtocols`: For immutable containers
- `MulleObjCMutableContainerProtocols`: For mutable containers
- `MulleObjCImmutableProtocols`: For other immutable objects
- `MulleObjCMutableProtocols`: For other mutable objects
