# MulleObjCRootObject

The `MulleObjCRootObject` protocol defines the minimal interface for root objects in mulle-objc. It inherits from `MulleObjCRuntimeObject` and is useful for classes that don't want the full NSObject functionality.

All methods marked with `MULLE_OBJC_THREADSAFE_METHOD` are thread-safe.

## Optional Methods

### Object Creation and Initialization
- `+alloc`
- `+allocWithZone:` (zones are deprecated)
- `+new`
- `-init`

### Memory Management
- `-zones` - Always returns NULL
- `-mulleAllocator`
- `-mullePerformFinalize`
- `-mulleIsFinalized`
- `-finalize`
- `-dealloc`

### Thread Safety and Access
- `-mulleIsThreadSafe`
- `-mulleIsAccessible`
- `-mulleIsAccessibleByThread:`
- `-mulleGainAccess`
- `-mulleGainAccessWithTAOStrategy:`
- `-mulleRelinquishAccess`
- `-mulleRelinquishAccessWithTAOStrategy:`
- `-mulleTAOStrategy`

### Class Introspection
- `-class`
- `+class`
- `-superclass`
- `+isSubclassOfClass:`
- `-isKindOfClass:`
- `-isMemberOfClass:`

### Protocol and Method Introspection
- `-conformsToProtocol:`
- `-respondsToSelector:`
- `+instanceMethodForSelector:`
- `-methodForSelector:`

### Method Invocation
- `-performSelector:`
- `-performSelector:withObject:`
- `-performSelector:withObject:withObject:`

### Universe Support
- `-_pushToParentAutoreleasePool`

### Helper Functions
- `MulleObjCClassIsSubclassOfClass`
- `NSObjectIsKindOfClass`
- `MulleObjCInstanceIsMemberOfClass`

Note: This protocol is primarily used for lightweight objects and forwarding classes that don't need the full NSObject functionality.
