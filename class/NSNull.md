# NSNull

Singleton class that represents a null value in collections that don't accept nil. Returns nil/NULL/0 for all unknown method calls.

## Base Class
NSObject

## Implemented Protocols
- MulleObjCSingleton
- MulleObjCValueProtocols

## Methods

### Singleton Access
- [`+null`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+null+of+NSNull+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSNull.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSNull.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Returns the singleton NSNull instance

### Comparison
- [`-compare:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+compare+of+NSNull+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSNull.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSNull.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Compares with other objects:
  - Returns NSOrderedSame if other is nil or self
  - Returns NSOrderedAscending otherwise

### Dynamic Method Handling
- [`-forward:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+forward+of+NSNull+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSNull.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSNull.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Returns NULL for all unknown method calls

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
