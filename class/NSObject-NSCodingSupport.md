# NSObject NSCoding Support Functions

Functions for object serialization and coding in mulle-objc.

## Encoding Operations

### Basic Encoding

``` c
void NSEncodeObject(NSCoder *coder, id object);
void NSEncodeRootObject(NSCoder *coder, id object);
```

### Conditional Encoding

``` c
BOOL NSEncodeConditionalObject(NSCoder *coder, id object);
void NSEncodeBycopy(NSCoder *coder, id object);
void NSEncodeByref(NSCoder *coder, id object);
```

## Decoding Operations

### Object Decoding

``` c
id NSDecodeObject(NSCoder *coder);
id NSDecodeRootObject(NSCoder *coder);
```

### Class Handling

``` c
Class NSDecodingClassForClassName(NSString *codedName);
void NSSetDecodingClassForClassName(Class cls, NSString *codedName);
```

## Version Support

### Version Management

``` c
NSUInteger NSClassVersionForCoder(Class cls);
void NSSetClassVersionForCoder(Class cls, NSUInteger version);
```

## Coding Helpers

### Type Encoding

``` c
void NSEncodeType(NSCoder *coder, const char *type);
const char *NSDecodeType(NSCoder *coder);
```

## Best Practices

1.  Handle version migration
2.  Use conditional encoding appropriately
3.  Implement proper class substitution
4.  Consider backward compatibility
5.  Document coding requirements

## Thread Safety

-   Coding operations are not thread-safe
-   Synchronize shared coder access
-   Consider version conflicts
-   Handle concurrent encoding
