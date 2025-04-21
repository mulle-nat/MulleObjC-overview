# NSZone

The `NSZone` structure provides legacy support for zone-based memory allocation. In modern mulle-objc, zones are deprecated and all zone functions are implemented as pass-through to standard memory allocation.

## Structure

```objc
typedef struct {
    void *unused;  // empty would be not C11
} NSZone;
```

## Functions

### Zone Management

* `NSDefaultMallocZone()` - Returns the default allocation zone (returns NULL)
* `NSCreateZone(startSize, granularity, canFree)` - Creates a new zone (returns NULL)
* `NSRecycleZone(zone)` - Recycles a zone (no-op)
* `NSSetZoneName(zone, name)` - Sets a zone's name (no-op)
* `NSZoneFromPointer(p)` - Gets zone containing pointer (returns NULL)

### Memory Allocation

* `NSZoneMalloc(zone, size)` - Allocates memory from a zone (uses mulle_malloc)
* `NSZoneCalloc(zone, numElems, byteSize)` - Allocates zeroed memory
* `NSZoneRealloc(zone, p, size)` - Reallocates memory block
* `NSZoneFree(zone, p)` - Frees memory allocated from zone

### Object Zone Access

* `mulle_objc_object_zone()` - Returns zone of an object (returns NULL)

## Notes

All zone functions are provided for compatibility with legacy code. In modern mulle-objc:
- Zones are not used for memory management
- All zone creation functions return NULL
- Memory allocation functions pass through to standard allocation
- Zone management functions are no-ops
