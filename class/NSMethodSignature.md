# NSMethodSignature

## Overview

`NSMethodSignature` encapsulates method type information in mulle-objc. It
provides detailed information about method arguments, return types, and
frame layouts, with special support for the Meta ABI system.

## Key Features

-   Method type encoding
-   Argument information
-   Return type handling
-   Frame layout calculation
-   Meta ABI support

## Usage

### Creating Method Signatures

``` objc
// Get signature from a class
NSMethodSignature *signature = [targetClass instanceMethodSignatureForSelector:@selector(method:)];

// Get signature for current method
NSMethodSignature *signature = [self methodSignatureForSelector:_cmd];
```

### Accessing Type Information

``` objc
// Get return and argument types
const char *returnType = [signature methodReturnType];
const char *argType = [signature getArgumentTypeAtIndex:1];

// Get frame information
NSUInteger frameLength = [signature frameLength];
NSUInteger numberOfArguments = [signature numberOfArguments];
```

### Method Invocation Support

``` objc
// Check argument compatibility
if ([signature isOneway]) {
    // Handle oneway method
}

// Get argument size and alignment
NSUInteger size, align;
[signature getArgumentSizeAtIndex:1 size:&size align:&align];
```

## Technical Details

### Core Methods

1.  **Type Information**:

    ``` objc
    - (const char *)methodReturnType;
    - (const char *)getArgumentTypeAtIndex:(NSUInteger)idx;
    - (NSUInteger)numberOfArguments;
    ```

2.  **Frame Layout**:

    ``` objc
    - (NSUInteger)frameLength;
    - (void)getArgumentSizeAtIndex:(NSUInteger)index
                             size:(NSUInteger *)sizep
                            align:(NSUInteger *)alignp;
    ```

### Meta ABI Support

1.  **ABI Information**:

    ``` objc
    - (struct mulle_metaabi *)metaABIStruct;
    - (BOOL)isMetaABI;
    ```

## Best Practices

1.  **Type Handling**:
    -   Validate type encodings
    -   Handle unknown types
    -   Check argument bounds
2.  **Memory Management**:
    -   Cache signatures when possible
    -   Handle alignment properly
    -   Clean up resources
3.  **Error Handling**:
    -   Check index bounds
    -   Validate type strings
    -   Handle invalid signatures

## Important Considerations

1.  **Performance**:
    -   Signature caching
    -   Type encoding cost
    -   Frame layout computation
2.  **Compatibility**:
    -   Type encoding standards
    -   ABI compatibility
    -   Platform differences
3.  **Safety**:
    -   Bounds checking
    -   Type validation
    -   Memory alignment

## Use Cases

1.  **Method Forwarding**:

    ``` objc
    - (NSMethodSignature *)methodSignatureForSelector:(SEL)sel
    {
        NSMethodSignature *signature = [super methodSignatureForSelector:sel];
        if (!signature) {
            signature = [self.target methodSignatureForSelector:sel];
        }
        return signature;
    }
    ```

2.  **Dynamic Method Implementation**:

    ``` objc
    - (void)handleInvocation:(NSInvocation *)invocation
    {
        NSMethodSignature *signature = [invocation methodSignature];
        const char *returnType = [signature methodReturnType];

        // Handle different return types
        if (strcmp(returnType, @encode(id)) == 0) {
            // Handle object return
        }
    }
    ```

3.  **Type Information Inspection**:

    ``` objc
    - (void)inspectMethod:(SEL)selector
    {
        NSMethodSignature *signature = [self methodSignatureForSelector:selector];
        NSUInteger args = [signature numberOfArguments];

        for (NSUInteger i = 0; i < args; i++) {
            const char *type = [signature getArgumentTypeAtIndex:i];
            NSUInteger size, align;
            [signature getArgumentSizeAtIndex:i size:&size align:&align];
            // Process argument information
        }
    }
    ```
