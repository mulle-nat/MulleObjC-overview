# NSCopyingWithAllocator

Protocol for transferring objects between different allocator schemes in mulle-objc.

## Optional Methods

- [`-copyWithAllocator:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+copyWithAllocator+of+NSCopyingWithAllocator+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/NSCopyingWithAllocator.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/NSCopyingWithAllocator.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Creates a copy using specified allocator

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

- [`_MulleObjCInstanceCopyWithAllocator`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+_MulleObjCInstanceCopyWithAllocator+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/NSCopyingWithAllocator.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/NSCopyingWithAllocator.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Internal support function

Note: MEMO: scheme needs to remember allocator in the instance header
