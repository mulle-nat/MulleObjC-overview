# MulleObjCClassCluster

The `MulleObjCClassCluster` protocol provides support for implementing class clusters, a design pattern where a single abstract superclass provides a common interface to multiple concrete subclasses.

## Required Methods

* `initialize` - Class initialization method (must call super or MulleObjCClassMarkAsClassCluster)
* `__classClusterClass` - Returns the actual class to be used for instantiation

## Implementation Pattern

### Class Hierarchy
```objc
YourClass : MulleObjCClassCluster       // Will alloc placeholder
YourSubclass : YourClass                // Will use NSAllocateObject
```

### Allocation Behavior

1. When `+alloc` is called on a class cluster:
   - Returns a retained placeholder object
   - Placeholder is infinitely retained
   - Must not be released in init routines

2. Subclasses should not implement `+alloc`:
   - Doing so removes them from the class cluster
   - Should use NSAllocateObject instead

## Example Structure

A complex class cluster like NSArray might be structured as:

```
Array <- _PlaceholderArray
      <- _EmptyArray
      <- _ConcreteArray

Array <- MutableArray <- _PlaceholderMutableArray
                     <- _EmptyArray
                     <- _ConcreteMutableArray
```

## Usage Guidelines

1. Mark class as cluster in initialization:
```objc
+ (void)initialize {
    MulleObjCClassMarkAsClassCluster(self);
}
```

2. Implement class cluster selection:
```objc
+ (Class)__classClusterClass {
    // Return appropriate concrete class based on requirements
    return [_ConcreteImplementation class];
}
```

3. Handle placeholder objects:
   - Don't release placeholders in init methods
   - Placeholders are automatically retained
   - Use for temporary state during initialization

## Notes

* Class clusters provide a clean public interface while hiding implementation details
* Useful for optimizing memory usage with specialized implementations
* Common in Foundation (NSString, NSArray, NSDictionary, etc.)
* Placeholders help manage the initialization process
* Subclasses must be carefully designed to maintain class cluster behavior
