# NSNull

## Overview

`NSNull` is a singleton class in mulle-objc that represents null values in
collections and other contexts. It provides a unique behavior of returning
nil/NULL/0 for all unknown messages.

## Key Features

-   Singleton implementation
-   Null value representation
-   Collection compatibility
-   Message handling
-   Memory efficiency

## Usage

### Basic Usage

``` objc
// Get the shared null instance
NSNull *null = [NSNull null];

// Use in collections
NSArray *array = @[@"one", [NSNull null], @"three"];
NSDictionary *dict = @{@"key1": @"value",
                      @"key2": [NSNull null]};
```

### Null Checking

``` objc
// Check for null values
if (value == [NSNull null]) {
    // Handle null case
}

// Compare null objects
BOOL isNull = [[NSNull null] isEqual:value];
```

### Message Handling

``` objc
// NSNull handles unknown messages by returning nil/0
NSNull *null = [NSNull null];
id result = [null anyUnknownMethod];  // Returns nil
NSInteger number = [null count];       // Returns 0
```

## Technical Details

### Core Methods

1.  **Instance Management**:

    ``` objc
    + (NSNull *)null;
    - (id)init;  // Not used, always use +null
    ```

2.  **Object Protocol**:

    ``` objc
    - (BOOL)isEqual:(id)other;
    - (NSUInteger)hash;
    - (id)copy;
    ```

### Implementation Details

1.  **Singleton Pattern**:

    ``` objc
    + (NSNull *)null
    {
        static NSNull *shared = nil;
        if (!shared) {
            shared = [[self alloc] init];
        }
        return shared;
    }
    ```

## Best Practices

1.  **Usage Guidelines**:
    -   Use for explicit null values
    -   Check equality with isEqual:
    -   Handle in collections
2.  **Error Prevention**:
    -   Document null values
    -   Validate null handling
    -   Consider alternatives
3.  **Performance**:
    -   Use singleton properly
    -   Avoid unnecessary checks
    -   Handle messages efficiently

## Important Considerations

1.  **Thread Safety**:
    -   Singleton is thread-safe
    -   No mutable state
    -   Safe message handling
2.  **Memory Management**:
    -   Single shared instance
    -   No retain/release needed
    -   Collection optimization
3.  **Message Handling**:
    -   Returns nil/0 for unknown
    -   No exceptions thrown
    -   Predictable behavior

## Use Cases

1.  **Collection Storage**:

    ``` objc
    - (void)storeValue:(id)value forKey:(NSString *)key
    {
        [dictionary setObject:(value ?: [NSNull null]) forKey:key];
    }
    ```

2.  **Optional Handling**:

    ``` objc
    - (id)getValueOrNull:(id)value
    {
        return value ?: [NSNull null];
    }
    ```

3.  **Data Serialization**:

    ``` objc
    - (NSDictionary *)serializeObject:(id)obj
    {
        return @{
            @"id": @([obj identifier]),
            @"name": [obj name] ?: [NSNull null],
            @"data": [obj data] ?: [NSNull null]
        };
    }
    ```

## Advanced Features

### Collection Integration

``` objc
- (NSArray *)arrayWithNulls:(NSArray *)source
{
    NSMutableArray *result = [NSMutableArray array];
    for (id obj in source) {
        [result addObject:obj ?: [NSNull null]];
    }
    return result;
}
```

### JSON Compatibility

``` objc
- (id)jsonSafeValue:(id)value
{
    if (!value) {
        return [NSNull null];
    }
    if ([value isKindOfClass:[NSDate class]]) {
        return [self.dateFormatter stringFromDate:value];
    }
    return value;
}
```

### Validation Support

``` objc
- (BOOL)validateValue:(id)value
{
    if (!value || value == [NSNull null]) {
        return NO;
    }
    return YES;
}
```
