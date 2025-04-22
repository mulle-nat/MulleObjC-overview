# MulleObjCProperty

Functions for property management and clearing.

## Property Management

- `MulleObjCInstanceClearProperties(id obj, BOOL clearReadOnly)` - Clears all properties
- `MulleObjCClassWalkProperties(Class cls, mulle_objc_walkpropertiescallback_t f, void *userinfo)` - Walks class properties
- `MulleObjCInstanceWalkProperties(id obj, mulle_objc_walkpropertiescallback_t f, void *userinfo)` - Walks instance properties

## Thread-Safe Property Macros

- `MulleObjCAcquirePointerAtomically(mulle_atomic_pointer_t *p)` - Thread-safe pointer acquisition
- `MulleObjCRecycleObjectAtomically(mulle_atomic_pointer_t *p, id obj)` - Thread-safe object recycling

Note: Property clearing handles both direct ivar access and setter methods appropriately.
