# NSFastEnumeration

Protocol for supporting fast enumeration in collections. This is the modern replacement for traditional NSEnumeration, optimized for the `for`..`in` syntax.

## Required Methods

- `countByEnumeratingWithState:objects:count:` - Returns items in batches for enumeration
- `count` - Returns total number of enumerable items

## Usage Example

```objc
// Implementing the protocol
@interface MyCollection : NSObject <NSFastEnumeration>
@end

@implementation MyCollection
- (NSUInteger) count 
{
   return _count;
}

- (NSUInteger) countByEnumeratingWithState:(NSFastEnumerationState *) state
                                  objects:(id *) stackbuf
                                    count:(NSUInteger) len
{
   // Return items in batches, updating state
   NSUInteger  batchCount;
   
   // First call: initialize state
   if (! state->state)
   {
      state->mutationsPtr = &_mutations;
      state->state = 1;
      state->itemsPtr = _storage;
   }
   
   // Return batch of items or 0 when done
   batchCount = MIN( len, _count - state->state + 1);
   state->state += batchCount;
   return( batchCount);
}
@end

// Using fast enumeration
for( id obj in collection)  
{
   // Objects delivered in efficient batches
   [obj doSomething];
}
```

## Key Features

- Objects are delivered in batches for better performance
- Mutation detection during enumeration
- No retain/release of enumerated container required
- Thread-safe if container is thread-safe
- Supports the Objective-C `for`..`in` syntax

## Notes

- The container is not retained during enumeration
- Mutations during enumeration will raise an exception
- State is maintained between batch calls
- Batch size can be optimized for different collection types
- Replaces older NSEnumeration protocol
