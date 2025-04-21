# NSCopyingWithAllocator

The `NSCopyingWithAllocator` protocol enables objects to create copies of themselves using a specific allocator. This is particularly useful when transferring objects between different memory management schemes.

## Optional Methods

* `copyWithAllocator:` - Creates a copy of the receiver using the specified allocator

## Default Implementation Behavior

The default implementation handles instance variables and properties as follows:

### Instance Variables
* **Scalar Types** (int, float, etc.): Copied directly
* **Structures**: Copied directly (caution: unsafe if struct contains objects)
* **C Strings** (char*): Duplicated using strdup
* **Void Pointers** (void*): Zeroed
* **Objects** (id): Zeroed

### Properties
* **assign**: Zeroed
* **copy**: Copied using copyWithAllocator:
* **retain**: Zeroed

Example:
```objc
@interface Foo : NSObject
{
    int  _a;                     // copied
    struct { int a; int b} _b;   // copied (unsafe if contains id)
    char *_c;                    // strduped
    void *_d;                    // zeroed
    id   _e;                    // zeroed
}
@property (assign) id f;         // zeroed
@property (copy) id g;          // copied
@property (retain) id h;        // zeroed
@end
```

## Usage Notes

1. Used to transfer objects between different allocator schemes
2. If object already exists in target allocator, returns retained instance
3. Deep copies strings and copyable objects
4. Zeroes references that can't be safely transferred
5. Be cautious with structures containing object references

## Global Support Function

* `_MulleObjCInstanceCopyWithAllocator(object, extraBytes, allocator)` - Internal function supporting allocator-based copying

## Implementation Considerations

* Consider memory ownership in target allocator
* Handle any custom object references appropriately
* Be aware of structure contents that might need special handling
* Test copying between different allocator schemes
