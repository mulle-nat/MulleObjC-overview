# NSZone

## Overview

`NSZone` is a legacy memory management structure in mulle-objc that provides
zone-based memory allocation compatibility. It implements a simplified
approach that maps all operations to standard memory functions while
maintaining compatibility.

## Key Features

-   Memory allocation compatibility
-   Standard memory function mapping
-   Legacy support
-   Zero overhead implementation
-   Simplified memory management

## Usage

### Basic Zone Operations

``` objc
// Create a new zone (returns NULL in mulle-objc)
NSZone *zone = NSCreateZone(1024, 128, YES);

// Allocate memory in zone
void *memory = NSZoneMalloc(zone, size);

// Reallocate memory in zone
void *newMemory = NSZoneRealloc(zone, memory, newSize);

// Free memory in zone
NSZoneFree(zone, memory);
```

### Zone Management

``` objc
// Get default zone (returns NULL)
NSZone *defaultZone = NSDefaultMallocZone();

// Free a zone (no-op in mulle-objc)
NSRecycleZone(zone);
```

### Object Allocation

``` objc
// Allocate object in zone
id object = NSAllocateObject(class, extraBytes, zone);

// Reallocate object in zone
id newObject = NSReallocateObject(object, extraBytes, zone);

// Free object in zone
NSDeallocateObject(object);
```

## Technical Details

### Core Functions

1.  **Zone Operations**:

    ``` objc
    NSZone *NSCreateZone(NSUInteger startSize,
                         NSUInteger granularity,
                         BOOL canFree);
    void NSRecycleZone(NSZone *zone);
    ```

2.  **Memory Management**:

    ``` objc
    void *NSZoneMalloc(NSZone *zone, NSUInteger size);
    void *NSZoneCalloc(NSZone *zone, NSUInteger count, NSUInteger size);
    void *NSZoneRealloc(NSZone *zone, void *ptr, NSUInteger size);
    void NSZoneFree(NSZone *zone, void *ptr);
    ```

### Implementation Details

1.  **Zone Mapping**:

    ``` objc
    // All zone operations map to standard memory functions
    void *NSZoneMalloc(NSZone *zone, NSUInteger size)
    {
        return malloc(size);
    }
    ```

## Best Practices

1.  **Modern Usage**:
    -   Avoid zone-based allocation
    -   Use standard memory functions
    -   Consider alternatives
2.  **Migration Strategy**:
    -   Update legacy code
    -   Remove zone parameters
    -   Simplify allocations
3.  **Performance**:
    -   Use direct allocation
    -   Minimize indirection
    -   Optimize memory usage

## Important Considerations

1.  **Compatibility**:
    -   Legacy code support
    -   API compatibility
    -   Zero overhead
2.  **Memory Management**:
    -   Standard allocation
    -   Direct mapping
    -   No zone overhead
3.  **Modern Code**:
    -   Prefer standard allocation
    -   Remove zone usage
    -   Simplify interfaces

## Use Cases

1.  **Legacy Support**:

    ``` objc
    - (id)allocateWithZone:(NSZone *)zone
    {
        // Zone parameter ignored in mulle-objc
        return [super allocWithZone:zone];
    }
    ```

2.  **Compatibility Layer**:

    ``` objc
    - (void)initializeWithZone:(NSZone *)zone
    {
        // Zone operations map to standard memory functions
        self->data = NSZoneMalloc(zone, dataSize);
        self->buffer = NSZoneCalloc(zone, count, elementSize);
    }
    ```

3.  **Modern Alternative**:

    ``` objc
    - (id)initWithCapacity:(NSUInteger)capacity
    {
        // Direct memory allocation without zones
        self = [super init];
        if (self) {
            self->data = malloc(capacity);
        }
        return self;
    }
    ```

## Advanced Features

### Memory Tracking

``` objc
- (void)trackMemoryUsage
{
    // Modern memory tracking without zones
    size_t allocated = 0;
    size_t used = 0;
    
    // Track allocations directly
    allocated += malloc_size(self->data);
    used += self->dataSize;
    
    // Report usage
    [self updateMemoryStatistics:allocated used:used];
}
```

### Allocation Strategies

``` objc
- (void *)allocateBuffer:(size_t)size
{
    // Direct allocation with alignment
    void *buffer = aligned_alloc(16, size);
    if (!buffer) {
        [self handleAllocationFailure:size];
    }
    return buffer;
}
```

### Memory Pools

``` objc
- (id)createMemoryPool
{
    // Modern pool implementation without zones
    return [[NSAutoreleasePool alloc] init];
}
```
