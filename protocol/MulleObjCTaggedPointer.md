# MulleObjCTaggedPointer

Protocol for objects that can be represented as tagged pointers. Inherits from `MulleObjCImmutable`. Tagged pointers store small values directly in the pointer bits rather than allocating separate storage.

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

- `+isTaggedPointerEnabled` - Returns whether tagged pointers are enabled

## Optional Methods

Memory management methods (all thread-safe):
- `-retain`
- `-autorelease`
- `-release`
- `-retainCount`

## Helper Functions

### Registration
- `MulleObjCTaggedPointerRegisterClassAtIndex(Class cls, unsigned int index)` - Registers a class for tagged pointer usage

### Value Validation
- `MulleObjCTaggedPointerIsIntegerValue(NSInteger value)`
- `MulleObjCTaggedPointerIsUnsignedIntegerValue(NSUInteger value)`
- `MulleObjCTaggedPointerIsFloatValue(float value)`
- `MulleObjCTaggedPointerIsDoubleValue(double value)`

### Creation
- `MulleObjCCreateTaggedPointerWithIntegerValueAndIndex(NSInteger value, NSUInteger index)`
- `MulleObjCCreateTaggedPointerWithUnsignedIntegerValueAndIndex(NSUInteger value, NSUInteger index)`
- `MulleObjCCreateTaggedPointerWithFloatValueAndIndex(float value, NSUInteger index)`
- `MulleObjCCreateTaggedPointerWithDoubleValueAndIndex(double value, NSUInteger index)`

### Value Access
- `MulleObjCTaggedPointerGetIntegerValue(void *pointer)`
- `MulleObjCTaggedPointerGetUnsignedIntegerValue(void *pointer)`
- `MulleObjCTaggedPointerGetFloatValue(void *pointer)`
- `MulleObjCTaggedPointerGetDoubleValue(void *pointer)`
- `MulleObjCTaggedPointerGetIndex(void *pointer)`

Note: Tagged pointers are immutable and thread-safe by design. The class must be registered with the runtime before use.
