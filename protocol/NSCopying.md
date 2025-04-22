# NSCopying

Protocol for object copying in mulle-objc.

## Required Methods

- [`-copy`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+copy+of+NSCopying+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/NSCopying.h) - Creates and returns a copy of the receiver

## Important Implementation Notes

If your class can avoid supporting NSCopying or NSMutableCopying or anything like it, you probably have made your life a lot easier. The problems with -copy are:

1. You will duplicate a lot of -init code or forget to do so
2. Subclasses need to be aware of -copy
3. The hazards are mostly in code staleness

It's recommended to put this in your -copy method:
```objc
assert( MulleObjCClassImplementsSelector( [self class], @selector( copy)) &&
        "your subclass must implement -copy and then start by "
        "calling [super copy] then add additional copy code");
```

## Protocol Details

A -copy with respect to NSCopying:
- Returns another instance of the receiver
- Should be as indistinguishable from the receiver as possible
- For immutable objects, returns a retained instance of the receiver
- Used for creating snapshots or instances from prototypes
- Used by properties
- Not used by NSDictionary (which uses MulleObjCImmutableCopying for keys)

Note: The old copyWithZone: is gone. If you have copyWithZone: methods, code a method -copy that calls your -copyWithZone:.
