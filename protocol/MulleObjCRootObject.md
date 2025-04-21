# MulleObjCRootObject

The `MulleObjCRootObject` protocol defines the fundamental interface for root objects in the mulle-objc runtime system. It provides essential functionality for object lifecycle, memory management, thread safety, and runtime introspection.

## Object Storage and Removal

### Class Methods
* `alloc` - Allocates instance memory
* `allocWithZone:` - Allocates in specific zone
* `new` - Creates and initializes instance

### Instance Methods
* `zones` - Returns zones (always NULL)
* `mulleAllocator` - Returns allocator
* `mullePerformFinalize` - Performs finalization
* `mulleIsFinalized` - Checks finalization status
* `finalize` - Finalizes object
* `dealloc` - Deallocates object
* `init` - Initializes object

## Memory Management

All methods are thread-safe:
* `retain` - Increases retain count
* `release` - Decreases retain count
* `retainCount` - Returns current retain count
* `autorelease` - Adds to autorelease pool

## Thread Safety

### Introspection
* `mulleIsThreadSafe` (instance/class) - Checks thread safety
* `mulleSetThreadSafe:` - Sets thread safety for owned objects

### Thread Affinity
* `mulleIsAccessible` - Checks current thread access
* `mulleIsAccessibleByThread:` - Checks specific thread access
* `mulleIsAutoreleased` - Checks autorelease status

### Thread Access Control
* `mulleGainAccess` - Claims thread access
* `mulleGainAccessWithTAOStrategy:` - Claims with strategy
* `mulleRelinquishAccess` - Releases thread access
* `mulleRelinquishAccessWithTAOStrategy:` - Releases with strategy
* `mulleTAOStrategy` - Returns current TAO strategy

## Runtime Introspection

### Class Methods
* `class` - Returns class object
* `isSubclassOfClass:` - Checks inheritance

### Instance Methods
* `class` - Returns instance class
* `superclass` - Returns superclass
* `isKindOfClass:` - Checks class hierarchy
* `isMemberOfClass:` - Checks exact class match

## Method Introspection

### Class Methods
* `instanceMethodForSelector:` - Gets method implementation
* `instancesRespondToSelector:` - Checks method existence
* `instanceMethodSignatureForSelector:` - Gets method signature

### Instance Methods
* `methodForSelector:` - Gets instance method implementation

## Implementation Notes

1. **Thread Safety**
   * Most methods marked as `MULLE_OBJC_THREADSAFE_METHOD`
   * Careful handling of thread affinity required
   * TAO strategy important for non-thread-safe objects

2. **Memory Management**
   * Proper finalization sequence important
   * Autorelease status affects thread transfers
   * Careful management of retain cycles needed

3. **Subclassing**
   * Override `mulleRelinquishAccess` and `mulleGainAccess`
   * Always call super implementation
   * Consider thread safety implications

4. **Usage**
   * Base class for lightweight objects
   * Alternative to full NSObject functionality
   * Useful for forwarding classes
