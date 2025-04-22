# NSObjectProtocol

The `NSObjectProtocol` defines the core behavior and interface that all
Objective-C objects should support. It provides fundamental operations for
object introspection, method invocation, and memory management.

## Core Methods

### Object Introspection

-   `self` - Returns the receiver
-   `class` - Returns the class of an instance or class
-   `superclass` - Returns the superclass of the instance
-   `isProxy` - Indicates if the receiver is a proxy object
-   `isKindOfClass:` - Tests if receiver inherits from or is a given class
-   `isMemberOfClass:` - Tests if receiver is exactly of given class
-   `conformsToProtocol:` - Tests if receiver implements a protocol
-   `respondsToSelector:` - Tests if receiver implements a method
-   `hash` - Returns hash value for use in collections
-   `isEqual:` - Tests equality with another object

### Method Resolution

-   `instanceMethodForSelector:` - Returns implementation of an instance
    method
-   `methodForSelector:` - Returns implementation for a method
-   `performSelector:` - Performs method specified by selector
-   `performSelector:withObject:` - Performs method with one argument
-   `performSelector:withObject:withObject:` - Performs method with two
    arguments

### Memory Management

-   `alloc` - Allocates instance memory
-   `init` - Initializes newly allocated instance
-   `new` - Combines alloc and init
-   `dealloc` - Deallocates instance memory
-   `finalize` - Performs cleanup before deallocation
-   `autorelease` - Adds object to autorelease pool
-   `zone` - Returns allocation zone (deprecated)

### String Representation

-   `UTF8String` - Returns C string representation
-   `description` - Returns object description (inherited from NSObject)

### Mulle-specific Extensions

-   `instantiate` - Automatic allocation and initialization support
-   `immutableInstance` - Returns immutable version of instance
-   `mullePerformFinalize` - Explicitly triggers finalization
-   `mulleIsFinalized` - Checks if object has been finalized
-   `_pushToParentAutoreleasePool` - Internal autorelease pool management

## Property Observation

The protocol also defines `MullePropertyObserving` for objects that use
observable properties:

-   `willChange` - Called before observable property changes

## Thread Safety

Many methods are marked as thread-safe using `MULLE_OBJC_THREADSAFE_METHOD`.
These methods can be safely called from any thread without additional
synchronization.

## Notes

-   This protocol is adopted by NSObject, making these methods available to
    most Objective-C classes
-   Some methods are mulle-objc specific extensions to support features like
    AAO (Automatic Allocation and Initialization)
-   The `zone` method is deprecated as zones have no meaning in modern
    mulle-objc
