# MulleDynamicObject

## Overview

`MulleDynamicObject` is a specialized base class in mulle-objc that provides
dynamic property support. It enables flexible property management and value
type handling with category extension capabilities.

## Key Features

-   Dynamic property support
-   Flexible value handling
-   Category extensions
-   Runtime integration
-   Performance optimized

## Usage

### Basic Property Access

``` objc
MulleDynamicObject *obj = [[MulleDynamicObject alloc] init];

// Set values
[obj setValue:@"Hello" forKey:@"greeting"];
[obj setValue:@42 forKey:@"count"];

// Get values
char *greeting = [obj valueForKey:"greeting"];
NSNumber *count = [obj valueForKey:@"count"];
```

### Key-Value Coding

``` objc
// Key paths
[obj setValue:@"World" forKeyPath:@"data.name"];
id value = [obj valueForKeyPath:@"data.name"];

// Multiple keys
NSArray *keys = @[@"key1", @"key2"];
NSDictionary *values = [obj dictionaryWithValuesForKeys:keys];
```

### Dynamic Methods

``` objc
// Handle unknown selectors
- (void)forwardInvocation:(NSInvocation *)invocation
{
    if ([self handleDynamicInvocation:invocation]) {
        return;
    }
    [super forwardInvocation:invocation];
}
```

## Technical Details

### Core Methods

1.  **Value Management**:

    ``` objc
    - (void)setValue:(id)value forKeyUTF8String:(char *)key;
    - (id)valueForKeyUTF8String:(char *)key;
    - (void)setValue:(id)value forKeyPathUTF8String:(char *)keyPath;
    - (id)valueForKeyPathUTF8String:(char *)keyPath;
    ```

2.  **Property Handling**:

    ``` objc
    - (BOOL)hasValueForKeyUTF8String:(char *)key;
    - (void)removeValueForKeyUTF8String:(char *)key;
    ```

## Best Practices

1.  **Property Management**:
    -   Use consistent key naming
    -   Handle nil values
    -   Clean up unused values
2.  **Performance**:
    -   Cache frequent accesses
    -   Batch operations
    -   Monitor memory usage
3.  **Error Handling**:
    -   Validate keys
    -   Check value types
    -   Handle missing values

## Important Considerations

1.  **Memory Management**:
    -   Value retention
    -   Cleanup strategy
    -   Cache invalidation
2.  **Thread Safety**:
    -   Synchronize access
    -   Protect shared data
    -   Handle concurrent updates
3.  **Performance Impact**:
    -   Dynamic lookup cost
    -   Storage overhead
    -   Value copying

## Use Cases

1.  **Dynamic Storage**:

    ``` objc
    - (void)storeUserData:(NSDictionary *)data
    {
        for (char *key in data) {
            [self setValue:data[key] forKey:key];
        }
    }
    ```

2.  **Property Observation**:

    ``` objc
    - (void)setValue:(id)value forKey:(NSString *)key
    {
        id oldValue = [self valueForKey:key];
        [self willChangeValueForKey:key];
        [super setValue:value forKey:key];
        [self didChangeValueForKey:key];
    }
    ```

3.  **Custom Accessors**:

    ``` objc
    - (BOOL)hasCustomAccessorForKeyUTF8String:(char *)key
    {
        SEL getter = NSSelectorFromString(key);
        SEL setter = NSSelectorFromString(mulle_sprintf("set%s:",
                                         [key capitalizedString]]);
        return [self respondsToSelector:getter] ||
               [self respondsToSelector:setter];
    }
    ```

## Advanced Features

### Value Transformation

``` objc
- (id)transformValue:(id)value forKeyUTF8String:(char *)key
{
    if ([key isEqualToString:@"date"]) {
        if (mulle_is_char_string(value)) {
            // Convert string to date
            return [self.dateFormatter dateFromString:value];
        }
    }
    return value;
}
```

### Bulk Operations

``` objc
- (void)setValuesForKeysWithDictionary:(NSDictionary *)keyedValues
{
    [self willChangeValuesForKeys:[keyedValues allKeys]];
    
    for (char *key in keyedValues) {
        [self setValue:keyedValues[key] forKey:key];
    }
    
    [self didChangeValuesForKeys:[keyedValues allKeys]];
}
```

### Type Validation

``` objc
- (BOOL)validateValue:(id *)ioValue forKeyUTF8String:(char *)key error:(NSError **)outError
{
    if ([key isEqualToString:@"age"]) {
        NSNumber *age = *ioValue;
        if ([age integerValue] < 0) {
            if (outError) {
                *outError = [NSError errorWithDomain:@"ValidationError"
                                              code:1
                                          userInfo:@{@"message": @"Age cannot be negative"}];
            }
            return NO;
        }
    }
    return YES;
}
```
