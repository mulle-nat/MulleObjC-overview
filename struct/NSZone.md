# NSZone

Legacy compatibility structure for zone-based memory allocation. In modern MulleObjC, all zone operations map to standard memory functions.

## Structure
```c
typedef struct {
    void *unused;  // Required for C11 compatibility
} NSZone;
```

## Zone Functions
All return NULL or map to standard allocation:
- `NSDefaultMallocZone()` - Returns NULL
- `NSCreateZone(startSize, granularity, canFree)` - Returns NULL
- `NSRecycleZone(zone)` - No-op
- `NSSetZoneName(zone, name)` - No-op
- `NSZoneFromPointer(p)` - Returns NULL

## Memory Functions
Map directly to standard allocation:
- `NSZoneMalloc(zone, size)` → `mulle_malloc(size)`
- `NSZoneCalloc(zone, numElems, byteSize)` → `mulle_calloc(numElems, byteSize)`
- `NSZoneRealloc(zone, p, size)` → `mulle_realloc(p, size)`
- `NSZoneFree(zone, p)` → `mulle_free(p)`

## Object Zone Access
- `mulle_objc_object_zone()` - Returns NULL (created by compiler for -zone)

Note: All zone functions exist only for legacy compatibility. Modern code should use standard allocation functions.
