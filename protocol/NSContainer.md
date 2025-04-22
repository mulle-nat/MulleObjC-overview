# NSContainer

The NSContainer protocols define the fundamental interfaces for collection
classes in mulle-objc. They specify the required methods for arrays,
dictionaries, and sets, both in mutable and immutable variants.

## Array Protocols

### NSArray

Core protocol for immutable arrays:
* `count` - Returns number of objects
* `objectAtIndex:` - Retrieves object at specified index

### NSMutableArray

Extends NSArray with modification methods:
* `insertObject:atIndex:` - Inserts object at index
* `removeObjectAtIndex:` - Removes object at index
* `addObject:` - Appends object
* `removeLastObject` - Removes last object
* `removeAllObjects` - Clears array
* `replaceObjectAtIndex:withObject:` - Replaces object at index

## Dictionary Protocols

### NSDictionary

Core protocol for immutable dictionaries:
* `count` - Returns number of entries
* `objectForKey:` - Retrieves value for key

### NSMutableDictionary

Extends NSDictionary with modification methods:
* `setObject:forKey:` - Associates object with key
* `removeObjectForKey:` - Removes entry for key
* `removeAllObjects` - Clears dictionary

## Set Protocols

### NSSet

Core protocol for immutable sets:
* `count` - Returns number of objects
* `member:` - Tests for object membership

### NSMutableSet

Extends NSSet with modification methods:
* `addObject:` - Adds object to set
* `removeObject:` - Removes object from set
* `removeAllObjects` - Clears set

## Common Features

All container protocols:
* Conform to NSObject protocol
* Support NSFastEnumeration for iteration
* Accept id`<NSObject>`{=html} to allow NSProxy participation
* Use MulleObjCImmutableCopying for dictionary keys

## Notes

-   NSFastEnumeration replaces traditional NSEnumeration
-   Dictionary keys must conform to both NSObject and
    MulleObjCImmutableCopying
-   Initialization methods are typically implemented but not required by
    protocols
-   All containers support fast enumeration via for-in loops
