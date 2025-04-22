# NSContainer

The NSContainer protocols define the fundamental interfaces for collection classes in mulle-objc.

## Array Protocols

### NSArray <NSObject, NSFastEnumeration>

Required methods:
- `-count` - Returns number of objects
- `-objectAtIndex:` - Retrieves object at index

### NSMutableArray <NSArray>

Required methods:
- `-insertObject:atIndex:` - Inserts object at index
- `-removeObjectAtIndex:` - Removes object at index
- `-addObject:` - Appends object
- `-removeLastObject` - Removes last object
- `-removeAllObjects` - Clears array
- `-replaceObjectAtIndex:withObject:` - Replaces object at index

## Dictionary Protocols

### NSDictionary <NSObject, NSFastEnumeration>

Required methods:
- `-count` - Returns number of entries
- `-objectForKey:` - Retrieves value for key (key must conform to NSObject and MulleObjCImmutableCopying)

### NSMutableDictionary <NSDictionary>

Required methods:
- `-setObject:forKey:` - Associates object with key
- `-removeObjectForKey:` - Removes entry for key
- `-removeAllObjects` - Clears dictionary

## Set Protocols

### NSSet <NSObject, NSFastEnumeration>

Required methods:
- `-count` - Returns number of objects
- `-member:` - Tests for object membership

### NSMutableSet <NSSet>

Required methods:
- `-addObject:` - Adds object to set
- `-removeObject:` - Removes object from set
- `-removeAllObjects` - Clears set

Note: All container protocols require NSFastEnumeration for iteration. Dictionary keys must conform to both NSObject and MulleObjCImmutableCopying.
