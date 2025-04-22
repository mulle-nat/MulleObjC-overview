# NSFastEnumeration

Protocol for supporting fast enumeration in collections. One principal advantage over NSEnumeration is that it is specified for `for` `in` loops, meaning the enumerated object need not be retained.

## State Structure
```objc
typedef struct
{
   NSUInteger   state;
   id           *itemsPtr;
   NSUInteger   *mutationsPtr;
   NSUInteger   extra[5];
} NSFastEnumerationState;
```

## Required Methods

- [`-count`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+count+of+NSFastEnumeration+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/NSFastEnumeration.h) - Returns number of items (experimentally added, makes NSFastEnumeration basically NSContainer)
- [`-countByEnumeratingWithState:objects:count:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+countByEnumeratingWithState:objects:count+of+NSFastEnumeration+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/NSFastEnumeration.h) - Returns items in batches for enumeration
  - state: Enumeration state
  - objects: Buffer for objects
  - count: Maximum number of objects to return

Note: This protocol replaces the older NSEnumeration protocol and is optimized for the Objective-C `for`..`in` syntax. The object being enumerated does not need to be retained during enumeration.
