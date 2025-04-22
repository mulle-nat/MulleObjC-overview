# MulleObjCTaggedPointer

Protocol for objects that can be represented as tagged pointers. Tagged pointers store small values directly in the pointer bits rather than allocating separate storage.

## Usage Example

```objc
// Register your class for tagged pointer usage
@interface MySmallInteger : NSObject <MulleObjCTaggedPointer>
@end

// Register at index 1 (indexes 0-7 available on 64 bit)
MulleObjCTaggedPointerRegisterClassAtIndex([MySmallInteger class], 1);

// Create tagged pointer instances
if (MulleObjCTaggedPointerIsIntegerValue(value))
{
   id obj = MulleObjCCreateTaggedPointerWithIntegerValueAndIndex(value, 1);
   NSInteger val = MulleObjCTaggedPointerGetIntegerValue(obj);
}
```

## Class Methods

### Registration and Configuration
- `+isTaggedPointerEnabled` - Returns whether tagged pointers are enabled in the runtime
- `MulleObjCTaggedPointerRegisterClassAtIndex(Class cls, unsigned int index)` - Registers a class for tagged pointer usage at a specific index

### Value Validation
- `MulleObjCTaggedPointerIsIntegerValue(NSInteger value)` - Tests if value fits in tagged pointer
- `MulleObjCTaggedPointerIsUnsignedIntegerValue(NSUInteger value)` - Tests if unsigned value fits
- `MulleObjCTaggedPointerIsFloatValue(float value)` - Tests if float value fits
- `MulleObjCTaggedPointerIsDoubleValue(double value)` - Tests if double value fits

### Tagged Pointer Creation
- `MulleObjCCreateTaggedPointerWithIntegerValueAndIndex(NSInteger value, NSUInteger index)`
- `MulleObjCCreateTaggedPointerWithUnsignedIntegerValueAndIndex(NSUInteger value, NSUInteger index)`
- `MulleObjCCreateTaggedPointerWithFloatValueAndIndex(float value, NSUInteger index)`
- `MulleObjCCreateTaggedPointerWithDoubleValueAndIndex(double value, NSUInteger index)`

### Value Extraction
- `MulleObjCTaggedPointerGetIntegerValue(void *pointer)` - Gets stored integer
- `MulleObjCTaggedPointerGetUnsignedIntegerValue(void *pointer)` - Gets stored unsigned
- `MulleObjCTaggedPointerGetFloatValue(void *pointer)` - Gets stored float
- `MulleObjCTaggedPointerGetDoubleValue(void *pointer)` - Gets stored double
- `MulleObjCTaggedPointerGetIndex(void *pointer)` - Gets index of tagged pointer

## Memory Management

All these methods are thread-safe:
- `-retain` - Returns self (tagged pointers are immortal)
- `-autorelease` - Returns self (no-op)
- `-release` - No-op
- `-retainCount` - Returns MULLE_OBJC_NEVER_RELEASE

## Best Practices

1. Always check if a value fits before creating a tagged pointer
2. Register your class early in the program startup
3. Use small consecutive index values (typically 0-7)
4. Remember tagged pointers are immutable by design
5. Leverage thread-safety for concurrent access

## Notes

- Tagged pointers are immutable and immortal - they cannot be deallocated
- All methods are thread-safe by definition
- The class must be registered with the runtime using `MulleObjCTaggedPointerRegisterClassAtIndex`
- Can be disabled in the runtime with universe config `no_tagged_pointer`
- Attempting to allocate or deallocate a tagged pointer object will abort
- Commonly used for small integers, characters, and other compact values
- Provides significant memory and performance benefits for small values
