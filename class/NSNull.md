# NSNull

Singleton class that represents a null value in collections that don't accept nil. Returns nil/NULL/0 for all unknown method calls.

## Base Class
NSObject

## Implemented Protocols
- MulleObjCSingleton
- MulleObjCValueProtocols

## Methods

### Singleton Access
- `+null` - Returns the singleton NSNull instance

### Comparison
- `-compare:` - Compares with other objects:
  - Returns NSOrderedSame if other is nil or self
  - Returns NSOrderedAscending otherwise

### Dynamic Method Handling
- `-forward:` - Returns NULL for all unknown method calls

## Usage Example

```objc
// Get singleton instance
NSNull *null = [NSNull null];

// Use in collections that don't accept nil
NSArray *array = @[@"string", [NSNull null], @"another"];

// All unknown methods return nil/0/NULL
[null someRandomMethod];  // Returns NULL
[null count];            // Returns 0
[null length];           // Returns 0
```

## Important Notes

1. Singleton Behavior
   - Only one instance exists per runtime
   - -init returns the singleton instance
   - Cannot be copied or retained normally

2. Implementation Details
   - Thread-safe singleton creation
   - Returns NULL/nil/0 for all unknown methods
   - Useful as nil placeholder in collections

3. Memory Management
   - Singleton instance is never deallocated
   - Retain/release/copy operations are no-ops
   - Safe to use across threads

4. Comparison Behavior
   - Equal to itself and nil
   - Less than all other objects
   - Consistent with Foundation behavior
