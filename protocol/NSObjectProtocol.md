# NSObjectProtocol

Protocol defining the core interface for objects in mulle-objc. Inherits from MulleObjCRuntimeObject.

## Optional Methods

### Basic Object Methods
- `-self` - Used by faults, not necessarily thread-safe

### Class Introspection (Thread-safe)
- `-superclass`
- `-class`
- `+class`
- `-isProxy`
- `-isKindOfClass:`
- `-isMemberOfClass:`

### AAO Support
- `+instantiate`

### Object Lifecycle
- `+new`
- `+alloc`
- `-init`
- `-dealloc`
- `-finalize`
- `-autorelease` (thread-safe)

### Protocol and Method Introspection (Thread-safe)
- `-conformsToProtocol:`
- `-respondsToSelector:`
- `+instanceMethodForSelector:`
- `-methodForSelector:`

### Method Invocation (Thread-safe)
- `-performSelector:`
- `-performSelector:withObject:`
- `-performSelector:withObject:withObject:`

### Collection Support
- `-hash`
- `-isEqual:`

### String Representation
- `-UTF8String` - mulle extension

### Zones (Deprecated)
- `-zone` - Always returns NULL

### Instance Type
- `-immutableInstance`

### Internal Support
- `-_pushToParentAutoreleasePool`

## Additional Protocol

### MullePropertyObserving
For classes using `observable` properties:
- `-willChange` - Called by generated setters before change

Note: Many methods are marked with `MULLE_OBJC_THREADSAFE_METHOD`. The called methods may not be thread-safe - it's performSelector's duty to check that.
