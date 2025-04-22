# MulleObjCAllocation

Core functions for object allocation and memory management.

## Instance Memory Management

- `MulleObjCInstanceGetAllocator(id obj)` - Gets allocator for an instance
- `MulleObjCInstanceAllocateMemory(id self, NSUInteger size)` - Allocates zeroed memory
- `MulleObjCInstanceDeallocateMemory(id self, void *p)` - Deallocates memory
- `MulleObjCInstanceFree(id self)` - Frees an instance

## Class Memory Management 

- `MulleObjCClassGetAllocator(Class cls)` - Gets allocator for a class
- `MulleObjCClassAllocateMemory(Class cls, NSUInteger size)` - Allocates zeroed memory
- `MulleObjCClassDeallocateMemory(Class cls, void *p)` - Deallocates memory

## Legacy API

- `NSAllocateObject(Class infra, NSUInteger extra, NSZone *zone)` - Legacy allocation API
- `NSDeallocateObject(id obj)` - Legacy deallocation API
- `NSIncrementExtraRefCount(id obj)` - Legacy retain count increment
- `NSDecrementExtraRefCountWasZero(id obj)` - Legacy retain count decrement
- `NSExtraRefCount(id obj)` - Legacy retain count access

## Thread-Specific Allocation

- `MulleObjCThreadSetAllocator(struct mulle_allocator *allocator)` - Sets thread-local allocator
- `MulleObjCThreadGetAllocator(void)` - Gets thread-local allocator

Note: The legacy API is provided for compatibility but new code should use the MulleObjC functions.
