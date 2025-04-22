# MulleObjCAutoreleasePool

## Overview

`MulleObjCAutoreleasePool` provides the core autorelease functionality and
utilities in mulle-objc. It offers low-level functions for managing
autorelease pools and integrates deeply with the runtime's thread and memory
management systems.

## Key Features

-   Thread-local pool management
-   Configurable pool behavior
-   Runtime integration
-   Efficient memory handling
-   Coroutine support

## Usage

### Basic Object Autoreleasing

``` objc
// Autorelease a single object
id obj = _MulleObjCAutoreleaseObject(someObject);

// Autorelease multiple objects
id objects[3] = {obj1, obj2, obj3};
_MulleObjCAutoreleaseObjects(objects, 3, universe);

// Autorelease objects with stride
_MulleObjCAutoreleaseSpacedObjects(objects, count, stride, universe);
```

### Pool Configuration

``` objc
// Initialize pool configuration
struct _mulle_objc_poolconfiguration config;
_mulle_objc_poolconfiguration_init(&config, poolClass);

// Reset pool configuration
_mulle_objc_poolconfiguration_reset(&config);

// Clean up pool configuration
_mulle_objc_poolconfiguration_done(&config);
```

### Thread Management

``` objc
// Create new pool configuration for thread
struct _mulle_objc_poolconfiguration *config;
config = mulle_objc_thread_new_poolconfiguration(universe);

// Reset thread's pool configuration
mulle_objc_thread_reset_poolconfiguration(universe);

// Clean up thread's pool configuration
mulle_objc_thread_done_poolconfiguration(universe);
```

## Technical Details

### Core Functions

1.  **Object Autoreleasing**:

    ``` c
    static inline id _MulleObjCAutoreleaseObject(id obj)
    {
        struct _mulle_objc_poolconfiguration *config;
        struct _mulle_objc_universe *universe;

        universe = _mulle_objc_object_get_universe(obj);
        config = mulle_objc_thread_get_poolconfiguration(universe);
        (*config->autoreleaseObject)(config, obj);
        return obj;
    }
    ```

2.  **Batch Autoreleasing**:

    ``` c
    static inline void _MulleObjCAutoreleaseObjects(id *objects,
                                                   NSUInteger count,
                                                   struct _mulle_objc_universe *universe)
    {
        struct _mulle_objc_poolconfiguration *config;
        config = mulle_objc_thread_get_poolconfiguration(universe);
        (*config->autoreleaseObjects)(config, objects, count, sizeof(id));
    }
    ```

## Best Practices

1.  **Pool Management**:
    -   Initialize pools properly
    -   Clean up pools when done
    -   Handle nested pools correctly
2.  **Thread Safety**:
    -   Use thread-local configurations
    -   Manage thread lifecycles
    -   Handle coroutine cases
3.  **Memory Efficiency**:
    -   Batch autorelease when possible
    -   Use appropriate pool scopes
    -   Clean up unused pools

## Important Considerations

1.  **Thread Integration**:
    -   Per-thread configurations
    -   Proper initialization/cleanup
    -   Coroutine handling
2.  **Performance**:
    -   Batch operations
    -   Pool hierarchy
    -   Memory overhead
3.  **Safety**:
    -   Proper initialization
    -   Cleanup handling
    -   Error conditions

## Use Cases

1.  **Thread Pool Management**:

    ``` objc
    // Thread initialization
    struct _mulle_objc_poolconfiguration *config;
    config = mulle_objc_thread_new_poolconfiguration(universe);

    // Thread cleanup
    mulle_objc_thread_done_poolconfiguration(universe);
    ```

2.  **Batch Processing**:

    ``` objc
    // Process multiple objects efficiently
    id objects[100];
    // Fill objects array
    _MulleObjCAutoreleaseObjects(objects, 100, universe);
    ```

3.  **Custom Pool Configuration**:

    ``` objc
    // Configure custom pool behavior
    struct _mulle_objc_poolconfiguration config;
    _mulle_objc_poolconfiguration_init(&config, customPoolClass);
    // Use custom configuration
    _mulle_objc_poolconfiguration_done(&config);
    ```
