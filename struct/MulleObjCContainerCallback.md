# MulleObjCContainerCallback Functions

Functions for container operations and callbacks in mulle-objc.

## Container Callbacks

### Basic Operations

``` c
struct MulleObjCContainerCallback   MulleObjCContainerRetainCallback;
struct MulleObjCContainerCallback   MulleObjCContainerCopyCallback;
struct MulleObjCContainerCallback   MulleObjCContainerAssignCallback;
```

### Memory Management

``` c
void MulleObjCContainerRetain(void *item, struct MulleObjCContainerCallback *callback);
void MulleObjCContainerRelease(void *item, struct MulleObjCContainerCallback *callback);
```

## Container Creation

### Callback Setup

``` c
struct MulleObjCContainerCallback MulleObjCContainerCallbackMake(
    void (*retain)(void *),
    void (*release)(void *),
    int  (*compare)(void *, void *)
);
```

### Specialized Callbacks

``` c
struct MulleObjCContainerCallback MulleObjCContainerValueCallbackMake(
    size_t size,
    void (*copy)(void *, void *),
    int  (*compare)(void *, void *)
);
```

## Container Operations

### Item Management

``` c
void *MulleObjCContainerCopy(void *item, 
                            struct MulleObjCContainerCallback *callback);
int MulleObjCContainerCompare(void *a, 
                             void *b,
                             struct MulleObjCContainerCallback *callback);
```

### Collection Support

``` c
void MulleObjCContainerFree(void *item,
                           struct MulleObjCContainerCallback *callback);
size_t MulleObjCContainerSize(void *item,
                             struct MulleObjCContainerCallback *callback);
```

## Best Practices

1.  Use appropriate callback type
2.  Handle memory management
3.  Implement proper comparison
4.  Consider value semantics
5.  Document callback behavior

## Thread Safety

-   Callbacks should be thread-safe
-   Consider concurrent access
-   Handle retain/release atomically
-   Implement thread-safe comparison
