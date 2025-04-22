# NSAutoreleasePool Functions

Core functions for autorelease pool management in mulle-objc.

## Pool Management

### Basic Operations
```c
// Push/pop pools
NSAutoreleasePool *MulleAutoreleasePoolPush(void);
void MulleAutoreleasePoolPop(NSAutoreleasePool *pool);

// Legacy interface
NSAutoreleasePool *NSPushAutoreleasePool(unsigned int size);
void NSPopAutoreleasePool(NSAutoreleasePool *pool);
```

### Object Management
```c
// Autorelease an object
id NSAutoreleaseObject(id obj);

// Autorelease allocation with allocator
void *MulleObjCAutoreleaseAllocation(void *pointer, 
                                    struct mulle_allocator *allocator);
```

## Debug Support

### Pool Inspection
```c
// Dump pool contents to file
void MulleObjCDumpAutoreleasePoolsToFile(char *filename);
void MulleObjCDumpAutoreleasePoolsToFileIndexed(char *filename);
void MulleObjCDumpAutoreleasePoolsToFILEWithOptions(FILE *fp, int indexed);

// Get frame number for debugging
unsigned long MulleObjCDumpAutoreleasePoolsFrame(void);
```

## Important Notes

1. Thread Safety
   - Each thread has own pool stack
   - Operations are thread-local
   - Safe for concurrent use

2. Memory Management
   - Pools form LIFO stack
   - Balance push/pop calls
   - Clean up on thread exit

3. Best Practices
   - Use @autoreleasepool when possible
   - Keep pool scope narrow
   - Handle nested pools properly
   - Clean up in reverse order

4. Debugging
   - CSV dump format available
   - Pool hierarchy visible
   - Object tracking support
   - Memory leak detection
