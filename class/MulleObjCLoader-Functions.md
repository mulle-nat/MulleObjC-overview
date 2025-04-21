# MulleObjCLoader Functions

Functions for dynamic loading and initialization in mulle-objc.

## Loader Operations

### Basic Loading
```c
void MulleObjCLoaderInit(struct MulleObjCLoader *loader);
void MulleObjCLoaderRegister(struct MulleObjCLoader *loader);
```

### Category Loading
```c
void MulleObjCLoaderLoadCategories(struct MulleObjCLoader *loader);
void MulleObjCLoaderLoadClasses(struct MulleObjCLoader *loader);
```

## Dependency Management

### Dependency Handling
```c
void MulleObjCLoaderAddDependency(struct MulleObjCLoader *loader, 
                                 struct MulleObjCLoader *dependency);
void MulleObjCLoaderRemoveDependency(struct MulleObjCLoader *loader, 
                                    struct MulleObjCLoader *dependency);
```

### Load Order
```c
void MulleObjCLoaderSetLoadPriority(struct MulleObjCLoader *loader, 
                                   NSInteger priority);
NSInteger MulleObjCLoaderGetLoadPriority(struct MulleObjCLoader *loader);
```

## Runtime Support

### Class Registration
```c
void MulleObjCLoaderRegisterClass(struct MulleObjCLoader *loader, 
                                 Class cls);
void MulleObjCLoaderRegisterCategory(struct MulleObjCLoader *loader, 
                                    Class cls, 
                                    const char *name);
```

## Best Practices

1. Handle dependencies properly
2. Set appropriate load priorities
3. Register all required classes
4. Consider initialization order
5. Document loader requirements

## Thread Safety

- Loading is not thread-safe
- Initialize during startup
- Consider dependency locks
- Handle concurrent access
