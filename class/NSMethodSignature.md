# NSMethodSignature

Provides type information about method arguments and return values. Supports MetaABI and method frame layout.

## Base Class
NSObject

## Implemented Protocols
- MulleObjCImmutableProtocols
- NSCopying

## Instance Variables
```objc
uint32_t                            _bits;    // Method descriptor bits
uint16_t                            _count;   // Number of types
uint16_t                            _extra;   // Extra storage size
char                               *_types;   // Type encodings
MulleObjCMethodSignatureTypeInfo   *_infos;  // Type information
```

## Methods

### Creation
- `+signatureWithObjCTypes:` - Creates signature from type string
- `+_signatureWithObjCTypes:descriptorBits:` - Internal creation method

### Method Information
- `-isOneway` - Checks if method is oneway
- `-isVariadic` - Checks if method has variable arguments
- `-_descriptorBits` - Gets method descriptor bits
- `-frameLength` - Gets frame storage length
- `-mulleMetaABIFrameLength` - Gets MetaABI frame length

### Type Information
- `-methodReturnLength` - Gets return value size
- `-methodReturnType` - Gets return value type
- `-getArgumentTypeAtIndex:` - Gets argument type at index
- `-numberOfArguments` - Gets total argument count
- `-mulleSignatureTypeInfoAtIndex:` - Gets type info at index

### MetaABI Support
- `-_methodMetaABIReturnType` - Gets MetaABI return type
- `-_methodMetaABIParameterType` - Gets MetaABI parameter type
- `-mulleInvocationSize` - Gets required invocation storage size

## Usage Example

```objc
// Get method signature
NSMethodSignature *sig = [target methodSignatureForSelector:@selector(method:)];

// Check argument count
NSUInteger args = [sig numberOfArguments];  // Includes self and _cmd

// Get argument types
char *type = [sig getArgumentTypeAtIndex:2];  // First user argument

// Get return type
char *returnType = [sig methodReturnType];

// Check method properties
BOOL isOneway = [sig isOneway];
BOOL hasVarArgs = [sig isVariadic];

// Get sizes for allocation
NSUInteger frameSize = [sig frameLength];
NSUInteger metaABISize = [sig mulleMetaABIFrameLength];
```

## Important Notes

1. Type Encoding
   - Uses Objective-C type encodings
   - Includes method qualifiers
   - Supports complex types
   - Handles MetaABI types

2. Memory Layout
   - Provides frame layout info
   - Supports MetaABI optimization
   - Handles alignment requirements
   - Manages variable storage

3. Performance
   - Caches type information
   - Optimizes MetaABI access
   - Minimizes parsing overhead
   - Reuses type info objects

4. Thread Safety
   - Thread-safe for reading
   - Immutable after creation
   - Safe to share between threads

5. MetaABI Types
```objc
typedef enum {
    MulleObjCMetaABITypeVoid = 0,
    MulleObjCMetaABITypeVoidPointer = 1,
    MulleObjCMetaABITypeParameterBlock = 2
} MulleObjCMetaABIType;
```
