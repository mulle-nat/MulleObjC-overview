# MulleObjCRuntimeObject

The most basic protocol in mulle-objc, defining essential memory management and thread safety methods. All methods marked with `MULLE_OBJC_THREADSAFE_METHOD` are thread-safe.

## Memory Management Methods

### Required Methods
- `-retain` - Increases retain count
- `-release` - Decreases retain count
- `-retainCount` - Returns current retain count
- `-dealloc` - Deallocates object
- `-finalize` - Finalizes object
- `-_becomeRootObject` - ObjectGraph support

### Thread Safety Methods

- `-mulleIsThreadSafe` - Returns whether object is thread-safe
- `-mulleIsAccessible` - Checks if object can be safely accessed by current thread
- `-mulleIsAccessibleByThread:` - Checks if object can be safely accessed by given thread

### Thread Access Control

- `-mulleGainAccess` - Claims thread access
- `-mulleGainAccessWithTAOStrategy:` - Claims thread access with specific strategy
- `-mulleRelinquishAccess` - Releases thread access
- `-mulleRelinquishAccessWithTAOStrategy:` - Releases thread access with specific strategy
- `-mulleTAOStrategy` - Returns current Thread Affinity and Ownership strategy

Note: This is the most fundamental protocol in mulle-objc. All objects must implement these methods either directly or through inheritance.
