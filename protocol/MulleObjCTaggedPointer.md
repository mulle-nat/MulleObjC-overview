# MulleObjCTaggedPointer

The `MulleObjCTaggedPointer` protocol provides support for tagged pointers, an optimization technique that allows small values to be stored directly in the pointer bits rather than allocating separate memory.

## Required Methods

* `isTaggedPointerEnabled` - Class method that returns whether tagged pointer optimization is enabled

## Optional Methods (Thread-Safe)

* `retain` - Retains the tagged pointer object
* `autorelease` - Autoreleases the tagged pointer object
* `release` - Releases the tagged pointer object
* `retainCount` - Returns the retain count (always 1 for tagged pointers)

## Registration and Validation

### Class Registration
```objc
int MulleObjCTaggedPointerRegisterClassAtIndex(Class cls, unsigned int index);
```
* Registers a class for tagged pointer usage
* Returns -1 on error with errno set:
  - EINVAL: cls is nil
  - ENOENT: index not available for architecture
* Aborts if index is already in use

### Value Validation Functions

1. **Integer Values**
```objc
BOOL MulleObjCTaggedPointerIsIntegerValue(NSInteger value);
BOOL MulleObjCTaggedPointerIsUnsignedIntegerValue(NSUInteger value);
```

2. **Float Values**
```objc
BOOL MulleObjCTaggedPointerIsFloatValue(float value);
```

### Class Index Management
```objc
int MulleObjCTaggedPointerClassGetIndex(Class cls);
```
* Returns the tagged pointer index for a class
* Returns -1 with errno=EINVAL if cls is nil

## Implementation Notes

1. Tagged pointers are immutable by default
2. Memory management methods are thread-safe
3. No actual retain/release operations occur
4. Values are stored directly in pointer bits
5. Useful for small integers and floats

## Benefits

1. Reduced memory allocation
2. Improved performance
3. Automatic thread safety
4. Zero retain/release overhead
5. Efficient small value handling

## Usage Example

```objc
// Register a class for tagged pointers
Class myClass = [MyNumber class];
int index = MulleObjCTaggedPointerRegisterClassAtIndex(myClass, 1);

// Check if a value can be stored as tagged pointer
NSInteger value = 42;
if (MulleObjCTaggedPointerIsIntegerValue(value)) {
    // Value can be stored as tagged pointer
}

// Get class index
int classIndex = MulleObjCTaggedPointerClassGetIndex(myClass);
```

## Best Practices

1. Use for small, immutable values
2. Register classes early in initialization
3. Verify value ranges before using
4. Handle registration errors appropriately
5. Consider architecture limitations
