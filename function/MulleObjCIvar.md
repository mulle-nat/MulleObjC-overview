# MulleObjCIvar

Functions for instance variable access and manipulation.

## Object Ivar Access

- `MulleObjCObjectGetObjectIvar(id self, mulle_objc_ivarid_t ivarid)` - Gets object ivar
- `MulleObjCObjectSetObjectIvar(id self, mulle_objc_ivarid_t ivarid, id value)` - Sets object ivar

## String Management

- `MulleObjCObjectSetDuplicatedUTF8String(id self, char **ivar, char *s)` - Sets duplicated UTF8 string

## Thread-Safe Access Macros

- `MulleObjCAtomicIdGet(mulle_atomic_id_t *ivar)` - Gets atomic id value
- `MulleObjCAtomicIdSet(mulle_atomic_id_t *ivar, id value)` - Sets atomic id value
- `MulleObjCAtomicIdSetRetain(mulle_atomic_id_t *ivar, id value)` - Sets and retains atomic id
- `MulleObjCAtomicIdSetCopy(mulle_atomic_id_t *ivar, id value)` - Sets and copies atomic id
- `MulleObjCAtomicIdSetAssign(mulle_atomic_id_t *ivar, id value)` - Assigns atomic id
- `MulleObjCAtomicIdRelease(mulle_atomic_id_t *ivar)` - Releases atomic id

## Lazy Loading

- `MulleObjCAtomicIdGetLazy(mulle_atomic_id_t *ivar, id obj, SEL lazyLoader)` - Thread-safe lazy loading
- `MulleObjCAtomicIdGetLazyRetain(mulle_atomic_id_t *ivar, id obj, SEL lazyLoader)` - Lazy load with retain
- `MulleObjCAtomicIdGetLazyCopy(mulle_atomic_id_t *ivar, id obj, SEL lazyLoader)` - Lazy load with copy
- `MulleObjCAtomicIdGetLazyAssign(mulle_atomic_id_t *ivar, id obj, SEL lazyLoader)` - Lazy load with assign

Note: The atomic operations provide thread-safe access to instance variables.
