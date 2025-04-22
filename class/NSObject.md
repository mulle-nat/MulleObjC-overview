# NSObject

## Overview

`NSObject` is the root class of most Objective-C class hierarchies in
mulle-objc. It provides fundamental object behavior including memory
management, method resolution, and runtime interaction capabilities.

## Key Features

-   Memory management (retain/release/autorelease)
-   Method resolution and forwarding
-   Object comparison and hashing
-   Runtime interaction
-   Object copying support
-   Object description

## Usage

### Object Creation

``` objc
// Create an instance
id obj = [NSObject object];

// Initialize an allocated instance
id obj = [[NSObject alloc] init];
```

### Memory Management

``` objc
// Retain an object
[obj retain];

// Release an object
[obj release];

// Autorelease an object
[obj autorelease];
```

### Object Comparison

``` objc
// Compare objects
if ([obj1 isEqual:obj2])
    // objects are equal

// Get hash value
NSUInteger hash = [obj hash];
```

### Runtime Information

``` objc
// Get class information
Class cls = [obj class];
Class metaCls = [NSObject class];

// Check class membership
if ([obj isKindOfClass:[NSObject class]])
    // obj is NSObject or subclass

if ([obj isMemberOfClass:[NSObject class]])
    // obj is exactly NSObject
```

## Technical Details

### Core Methods

1.  **Memory Management**:

    ``` objc
    - (instancetype) retain;
    - (void) release;
    - (instancetype) autorelease;
    ```

2.  **Object Creation**:

    ``` objc
    + (instancetype) alloc;
    - (instancetype) init;
    + (instancetype) new;
    ```

3.  **Object Comparison**:

    ``` objc
    - (BOOL) isEqual:(id)other;
    - (NSUInteger) hash;
    ```

4.  **Runtime Information**:

    ``` objc
    - (Class) class;
    + (Class) class;
    - (BOOL) isKindOfClass:(Class)cls;
    - (BOOL) isMemberOfClass:(Class)cls;
    ```

### Method Resolution

1.  **Dynamic Method Resolution**:

    ``` objc
    + (BOOL) resolveInstanceMethod:(SEL)sel;
    + (BOOL) resolveClassMethod:(SEL)sel;
    ```

2.  **Message Forwarding**:

    ``` objc
    - (id) forwardingTargetForSelector:(SEL)sel;
    - (void) forwardInvocation:(NSInvocation *)invocation;
    ```

## Best Practices

1.  **Memory Management**:
    -   Balance retain/release calls
    -   Use autorelease when returning objects
    -   Follow ownership semantics
2.  **Subclassing**:
    -   Override `isEqual:` and `hash` together
    -   Implement `description` for debugging
    -   Call `[super init]` in initializers
3.  **Method Resolution**:
    -   Implement forwarding methods correctly
    -   Handle unknown selectors gracefully
    -   Document dynamic behavior

## Important Considerations

1.  **Thread Safety**:
    -   Core methods are thread-safe
    -   Override carefully in subclasses
    -   Consider synchronization needs
2.  **Performance**:
    -   Cache frequently used values
    -   Optimize comparison methods
    -   Consider message forwarding cost
3.  **Compatibility**:
    -   Maintain consistent behavior
    -   Follow runtime conventions
    -   Consider subclass impact

## Use Cases

1.  **Custom Object Creation**:

    ``` objc
    @implementation MyObject
    - (instancetype)init {
        self = [super init];
        if ([self init]) {
            // Initialize instance variables
        }
        return self;
    }
    @end
    ```

2.  **Custom Comparison**:

    ``` objc
    @implementation MyObject
    - (BOOL)isEqual:(id)other {
        if (self == other)
            return YES;
        if (![other isKindOfClass:[self class]])
            return NO;
        // Compare instance variables
        return YES;
    }

    - (NSUInteger)hash {
        // Calculate hash based on instance variables
        return hash;
    }
    @end
    ```

3.  **Dynamic Method Handling**:

    ``` objc
    @implementation MyObject
    + (BOOL)resolveInstanceMethod:(SEL)sel {
        if ([NSStringFromSelector(sel) hasPrefix:@"dynamic"]) {
            // Add method dynamically
            return YES;
        }
        return [super resolveInstanceMethod:sel];
    }
    @end
    ```
