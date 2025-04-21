# NSMethodSignature Functions

Functions for working with method signatures and type encoding in mulle-objc.

## Signature Creation

### Basic Creation
```c
NSMethodSignature *NSMethodSignatureFromTypes(const char *types);
NSMethodSignature *NSMethodSignatureForSelector(id self, SEL sel);
```

### Type Information
```c
const char *NSGetSizeAndAlignment(const char *typePtr, 
                                NSUInteger *sizep, 
                                NSUInteger *alignp);
```

## Signature Analysis

### Type Access
```c
const char *NSMethodSignatureGetTypeEncoding(NSMethodSignature *sig);
NSUInteger NSMethodSignatureGetNumberOfArguments(NSMethodSignature *sig);
const char *NSMethodSignatureGetArgumentTypeAtIndex(NSMethodSignature *sig, 
                                                  NSUInteger idx);
```

### Return Type
```c
const char *NSMethodSignatureGetReturnType(NSMethodSignature *sig);
NSUInteger NSMethodSignatureGetReturnLength(NSMethodSignature *sig);
```

## Frame Operations

### Frame Management
```c
void NSMethodSignatureSetFrameLength(NSMethodSignature *sig, 
                                   NSUInteger length);
NSUInteger NSMethodSignatureGetFrameLength(NSMethodSignature *sig);
```

## Best Practices

1. Cache signatures when possible
2. Validate type encodings
3. Handle unknown types
4. Consider alignment requirements
5. Check frame lengths

## Thread Safety

- Signatures are immutable once created
- Safe for concurrent access
- Cache access may need synchronization
- Consider per-thread caching
