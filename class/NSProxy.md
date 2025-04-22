# NSProxy

Root class for proxy objects in mulle-objc. Provides the base implementation for objects that stand in for other objects.

## Implemented Protocols
- MulleObjCRootObject
- NSObject

## Methods

### Proxy Identification
- `+isProxy` - Returns NO for proxy class (thread-safe)
- `-isProxy` - Returns YES for proxy instances

## Important Notes

1. Root Class
   - Like NSObject, but specifically for proxies
   - Inherits all methods from NSObject protocol

2. Implementation Details
   - Minimal implementation
   - Provides foundation for proxy subclasses
   - Thread-safe class method marked with MULLE_OBJC_THREADSAFE_METHOD

3. Usage
   - Base class for creating proxy objects
   - Subclasses should implement appropriate forwarding methods
