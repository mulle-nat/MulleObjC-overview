# MulleObjCLoader Functions

Core functions for framework initialization and dependency management in mulle-objc.

## Loader Management

### Basic Operations
```c
// Initialize loader
void MulleObjCLoaderInit(struct MulleObjCLoader *loader);

// Register loader
void MulleObjCLoaderRegister(struct MulleObjCLoader *loader);

// Load components
void MulleObjCLoaderLoadCategories(struct MulleObjCLoader *loader);
void MulleObjCLoaderLoadClasses(struct MulleObjCLoader *loader);
```

### Dependency Management
```c
// Add/remove dependencies
void MulleObjCLoaderAddDependency(struct MulleObjCLoader *loader,
                                 struct MulleObjCLoader *dependency);

void MulleObjCLoaderRemoveDependency(struct MulleObjCLoader *loader,
                                    struct MulleObjCLoader *dependency);

// Set load priority
void MulleObjCLoaderSetLoadPriority(struct MulleObjCLoader *loader,
                                   NSInteger priority);
```

## Important Notes

1. Load Order
   - Dependencies load first
   - Classes before categories
   - Handle circular deps
   - Respect load priorities

2. Thread Safety
   - Loading is not thread-safe
   - Initialize at startup
   - Single-threaded load
   - Handle static init

3. Best Practices
   - Declare dependencies
   - Check load status
   - Handle failures
   - Document requirements

4. Performance
   - Load once only
   - Cache load info
   - Minimize dependencies
   - Optimize startup
