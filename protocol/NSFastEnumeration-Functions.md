# NSFastEnumeration Protocol Functions

Functions for fast enumeration support in mulle-objc.

## Enumeration Support

### Basic Operations

``` c
NSUInteger NSFastEnumerationGetItems(id<NSFastEnumeration> obj,
                                   id *stackbuf,
                                   NSUInteger len,
                                   NSUInteger *state);
```

### State Management

``` c
void NSFastEnumerationBegin(NSFastEnumerationState *state);
void NSFastEnumerationEnd(NSFastEnumerationState *state);
```

## Mutation Checking

### Mutation Detection

``` c
unsigned long NSFastEnumerationGetMutations(id<NSFastEnumeration> obj);
void NSFastEnumerationCheckMutations(id<NSFastEnumeration> obj,
                                   unsigned long mutations);
```

## Buffer Management

### Buffer Operations

``` c
NSUInteger NSFastEnumerationFillBuffer(id *stackbuf,
                                     NSUInteger maxItems,
                                     id<NSFastEnumeration> obj,
                                     NSUInteger startIndex);
```

### Optimization

``` c
NSUInteger NSFastEnumerationBatchSize(id<NSFastEnumeration> obj);
BOOL NSFastEnumerationShouldCopyItems(id<NSFastEnumeration> obj);
```

## Best Practices

1.  Handle mutations properly
2.  Use appropriate buffer size
3.  Implement state management
4.  Consider performance
5.  Document enumeration behavior

## Thread Safety

-   Enumeration is not thread-safe
-   Check for mutations
-   Handle concurrent access
-   Consider collection changes
