# NSCopyingWithAllocator

Protocol for transferring objects between different allocator schemes in mulle-objc.

## Optional Methods

- `-copyWithAllocator:` - Creates a copy using specified allocator

## Default Implementation Behavior

The default implementation will:
- Copy all integer/fp ivars harmlessly
- Deep copy char * as strings
- Copy all properties that are objects and not marked as assign
- Zero void * pointers
- Zero object references

Example:
```objc
@interface Foo : NSObject
{
    int  _a;                      // copied
    struct { int a; int b} _b;    // copied (dangerous if struct contains id)
    char *_c;                     // strduped
    void *_d;                     // zeroed!
    id   _e;                      // zeroed!
}
@property (assign) id  f;         // zeroed
@property (copy)   id  g;         // copied
@property (retain) id  h;         // zeroed!
@end
```

## Helper Function

- `_MulleObjCInstanceCopyWithAllocator(id object, NSUInteger extraBytes, struct mulle_allocator *allocator)` - Internal support function

Note: MEMO: scheme needs to remember allocator in the instance header
