# NSCopying

The `NSCopying` protocol enables objects to create copies of themselves. It's used for creating snapshots, prototypes, and is commonly used by properties that require copied objects.

## Required Methods

* `copy` - Creates and returns a new instance that's a copy of the receiver

## Implementation Guidelines

### When to Implement

Consider carefully before implementing NSCopying:
- Avoiding NSCopying can simplify your class design
- Copy operations often duplicate initialization code
- Subclasses must be aware of and properly implement copying

### Copy Semantics

A proper copy should:
1. Be a new instance of the receiver's class
2. Be initialized to be as indistinguishable from the receiver as possible
3. For immutable objects, return a retained instance of the receiver
4. For mutable objects, create a new instance with copied contents

### Common Uses

* Creating snapshots of object state
* Creating instances from prototypes
* Property copying (when property has 'copy' attribute)
* Note: Not used by NSDictionary keys (uses MulleObjCImmutableCopying instead)

### Implementation Tips

1. Always implement copy in subclasses
2. Call super's copy implementation first
3. Add subclass-specific copying code
4. Consider using this assertion in copy methods:
```objc
assert( MulleObjCClassImplementsSelector( [self class], @selector( copy)) &&
        "your subclass must implement -copy and then start by "
        "calling [super copy] then add additional copy code");
```

### Legacy Support

The traditional `copyWithZone:` method is no longer used. If you have existing `copyWithZone:` methods:
- Implement `copy` to call your `copyWithZone:` implementation
- For allocator-specific copying, use NSCopyingWithAllocator protocol instead
