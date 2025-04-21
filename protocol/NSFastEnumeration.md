# NSFastEnumeration

The `NSFastEnumeration` protocol provides high-performance enumeration of collections. It's specifically designed to work with the `for...in` loop syntax and offers better performance than traditional enumeration methods.

## Required Methods

* `count` - Returns the number of items in the collection
* `countByEnumeratingWithState:objects:count:` - Core enumeration method that provides batched access to collection items

## Fast Enumeration State

```objc
typedef struct {
    NSUInteger state;        // Enumeration state
    id *itemsPtr;           // Pointer to enumerated items
    NSUInteger *mutationsPtr; // Collection modification detection
    NSUInteger extra[5];    // Reserved for implementation use
} NSFastEnumerationState;
```

## Advantages Over Traditional Enumeration

1. Optimized for `for...in` loops
2. No need to retain enumerated object
3. Batch processing of items for better performance
4. Automatic mutation detection during enumeration

## Usage Example

```objc
for (id item in collection) {
    // Process item
}
```

## Implementation Guidelines

When implementing NSFastEnumeration:

1. Return items in batches for efficiency
2. Track mutations to prevent enumeration during modifications
3. Maintain state between batch requests
4. Implement count for collection size information
5. Return 0 when enumeration is complete

## Thread Safety

* Fast enumeration is not inherently thread-safe
* Mutations during enumeration are detected but not prevented
* Implement appropriate synchronization if needed

## Notes

* Primarily used by collection classes (NSArray, NSSet, etc.)
* More efficient than NSEnumerator for large collections
* Mutation detection helps prevent enumeration of modified collections
* The extra array in NSFastEnumerationState is reserved for implementation details
