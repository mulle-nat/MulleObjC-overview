# NSZone

Legacy memory management structure in mulle-objc that provides zone-based memory allocation compatibility.

## Functions

### Zone Operations
- [`NSCreateZone`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSCreateZone+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSZone.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSZone.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Creates new zone (returns NULL)
- [`NSRecycleZone`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSRecycleZone+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSZone.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSZone.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Frees zone (no-op)
- [`NSDefaultMallocZone`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSDefaultMallocZone+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSZone.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSZone.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Gets default zone (returns NULL)

### Memory Management
- [`NSZoneMalloc`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSZoneMalloc+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSZone.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSZone.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Allocates memory in zone
- [`NSZoneCalloc`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSZoneCalloc+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSZone.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSZone.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Allocates zeroed memory
- [`NSZoneRealloc`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSZoneRealloc+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSZone.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSZone.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Reallocates memory
- [`NSZoneFree`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSZoneFree+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSZone.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSZone.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Frees memory

### Object Allocation
- [`NSAllocateObject`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSAllocateObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSZone.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSZone.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Allocates object in zone
- [`NSReallocateObject`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSReallocateObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSZone.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSZone.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Reallocates object
- [`NSDeallocateObject`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSDeallocateObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSZone.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSZone.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Deallocates object

## Usage Example

```objc
// Create zone (returns NULL)
NSZone *zone = NSCreateZone(1024, 128, YES);

// Allocate memory in zone
void *memory = NSZoneMalloc(zone, size);

// Reallocate memory in zone
void *newMemory = NSZoneRealloc(zone, memory, newSize);

// Free memory in zone
NSZoneFree(zone, memory);

// Object allocation
id object = NSAllocateObject(class, extraBytes, zone);
```

## Important Notes

1. Compatibility
   - Legacy code support
   - API compatibility
   - Zero overhead

2. Memory Management
   - Standard allocation
   - Direct mapping
   - No zone overhead

3. Modern Code
   - Prefer standard allocation
   - Remove zone usage
   - Simplify interfaces

4. Best Practices
   - Use direct allocation
   - Minimize indirection
   - Optimize memory usage
