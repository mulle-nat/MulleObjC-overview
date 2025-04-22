# MulleObjCAllocation

Core functions for object allocation and memory management.

## Instance Functions

- `MulleObjCInstanceGetAllocator(id obj)` - Gets allocator for instance
- `MulleObjCInstanceAllocateMemory(id self, NSUInteger size)` - Allocates zeroed memory
- `MulleObjCInstanceAllocateNonZeroedMemory(id self, NSUInteger size)` - Allocates raw memory
- `MulleObjCInstanceReallocateNonZeroedMemory(id self, void *p, NSUInteger size)` - Resizes memory block
- `MulleObjCInstanceDeallocateMemory(id self, void *p)` - Frees allocated memory
- `MulleObjCInstanceDuplicateUTF8String(id self, char *s)` - Copies string using instance allocator

## Class Functions

- `MulleObjCClassGetAllocator(Class cls)` - Gets allocator for class
- `MulleObjCClassAllocateMemory(Class cls, NSUInteger size)` - Allocates zeroed memory
- `MulleObjCClassDeallocateMemory(Class cls, void *p)` - Frees allocated memory
- `MulleObjCClassDuplicateUTF8String(Class cls, char *s)` - Copies string using class allocator

## Thread Functions

- `MulleObjCThreadSetAllocator(struct mulle_allocator *allocator)` - Sets thread-local allocator
- `MulleObjCThreadGetAllocator(void)` - Gets thread-local allocator

## Usage Example

```objc
// Allocate memory for instance
id obj = self;
void *memory = MulleObjCInstanceAllocateMemory(obj, 1024);

// Use memory
// ...

// Free when done
MulleObjCInstanceDeallocateMemory(obj, memory);
```

## Important Notes

1. Memory Management
   - All allocations must be freed with corresponding deallocate function
   - Use instance allocator for instance-specific memory
   - Use class allocator for shared class memory

2. Thread Safety
   - Allocation functions are thread-safe
   - Each thread can have its own allocator
   - Thread allocator affects all allocations in that thread
