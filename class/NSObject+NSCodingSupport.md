# NSObject+NSCodingSupport

## Overview

`NSObject+NSCodingSupport` is a category in mulle-objc that provides
foundational support for object archiving and serialization. It implements
version control, class substitution, object replacement, and post-decode
processing capabilities.

## Key Features

-   Object archiving support
-   Version control
-   Class substitution
-   Object replacement
-   Post-decode processing

## Usage

### Basic Coding Support

``` objc
// Implementing NSCoding
@interface MyObject : NSObject <NSCoding>
@end

@implementation MyObject

- (void)encodeWithCoder:(NSCoder *)coder
{
    [coder encodeObject:self.name forKey:@"name"];
    [coder encodeInteger:self.value forKey:@"value"];
}

- (id)initWithCoder:(NSCoder *)coder
{
    self = [super init];
    if (self) {
        _name = [coder decodeObjectForKey:@"name"];
        _value = [coder decodeIntegerForKey:@"value"];
    }
    return self;
}

@end
```

### Class Version Support

``` objc
@implementation MyObject

+ (NSUInteger)version
{
    return 2;  // Current class version
}

- (id)initWithCoder:(NSCoder *)coder
{
    self = [super init];
    if (self) {
        NSUInteger version = [coder versionForClassName:NSStringFromClass([self class])];
        if (version == 1) {
            // Handle version 1 decoding
        } else {
            // Handle current version decoding
        }
    }
    return self;
}

@end
```

### Object Substitution

``` objc
@implementation MyObject

+ (Class)classForCoder
{
    // Return a different class for encoding if needed
    return [MyObjectArchive class];
}

- (Class)classForCoder
{
    // Instance-specific class substitution
    return [self shouldArchiveAsLegacy] ? [MyLegacyObject class] : [self class];
}

@end
```

## Technical Details

### Core Methods

1.  **Version Control**:

    ``` objc
    + (NSUInteger)version;
    - (NSUInteger)version;
    ```

2.  **Class Substitution**:

    ``` objc
    + (Class)classForCoder;
    - (Class)classForCoder;
    + (NSString *)classNameForCoder;
    ```

3.  **Object Replacement**:

    ``` objc
    - (id)replacementObjectForCoder:(NSCoder *)coder;
    - (id)awakeAfterUsingCoder:(NSCoder *)coder;
    ```

## Best Practices

1.  **Version Management**:
    -   Increment versions properly
    -   Handle all versions
    -   Document changes
2.  **Data Migration**:
    -   Convert between versions
    -   Validate data
    -   Handle missing fields
3.  **Error Handling**:
    -   Validate decoded data
    -   Handle corruption
    -   Provide defaults

## Important Considerations

1.  **Compatibility**:
    -   Version handling
    -   Forward compatibility
    -   Backward compatibility
2.  **Performance**:
    -   Efficient encoding
    -   Optimized decoding
    -   Memory usage
3.  **Security**:
    -   Data validation
    -   Safe decoding
    -   Secure storage

## Use Cases

1.  **Object Persistence**:

    ``` objc
    @implementation DataObject

    - (void)encodeWithCoder:(NSCoder *)coder
    {
        [super encodeWithCoder:coder];
        [coder encodeObject:self.identifier forKey:@"identifier"];
        [coder encodeObject:self.metadata forKey:@"metadata"];
        [coder encodeInteger:self.version forKey:@"version"];
    }

    - (id)initWithCoder:(NSCoder *)coder
    {
        self = [super initWithCoder:coder];
        if (self) {
            _identifier = [coder decodeObjectForKey:@"identifier"];
            _metadata = [coder decodeObjectForKey:@"metadata"];
            _version = [coder decodeIntegerForKey:@"version"];
        }
        return self;
    }

    @end
    ```

2.  **Version Migration**:

    ``` objc
    @implementation VersionedObject

    + (NSUInteger)version
    {
        return 2;
    }

    - (id)initWithCoder:(NSCoder *)coder
    {
        self = [super init];
        if (self) {
            NSUInteger version = [coder versionForClassName:NSStringFromClass([self class])];

            switch (version) {
                case 1:
                    [self decodeVersion1:coder];
                    break;
                case 2:
                    [self decodeVersion2:coder];
                    break;
                default:
                    [NSException raise:NSInvalidArchiveOperationException
                                format:@"Unsupported version: %lu", version];
            }
        }
        return self;
    }

    @end
    ```

3.  **Object Substitution**:

    ``` objc
    @implementation SubstitutableObject

    - (id)replacementObjectForCoder:(NSCoder *)coder
    {
        if (self.shouldUseAlternative) {
            return [[AlternativeObject alloc] initWithOriginal:self];
        }
        return self;
    }

    - (id)awakeAfterUsingCoder:(NSCoder *)coder
    {
        // Post-decode processing
        [self validateState];
        [self updateCachedValues];
        return self;
    }

    @end
    ```

## Advanced Features

### Custom Archiving

``` objc
@implementation CustomArchiver

- (void)encodeWithCoder:(NSCoder *)coder
{
    [super encodeWithCoder:coder];
    
    // Archive custom data structure
    NSMutableDictionary *archive = [NSMutableDictionary dictionary];
    [self archiveDataToDirectory:archive];
    [coder encodeObject:archive forKey:@"customData"];
}

- (id)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        // Restore from custom archive
        NSDictionary *archive = [coder decodeObjectForKey:@"customData"];
        [self restoreFromArchive:archive];
    }
    return self;
}

@end
```

### Secure Coding

``` objc
@implementation SecureObject

+ (BOOL)supportsSecureCoding
{
    return YES;
}

- (void)encodeWithCoder:(NSCoder *)coder
{
    [super encodeWithCoder:coder];
    
    // Encode with type checking
    if ([coder isKindOfClass:[NSSecureCoding class]]) {
        [coder encodeObject:self.data
                    forKey:@"data"
                    ofClass:[NSData class]];
    }
}

@end
```

### Migration Support

``` objc
@implementation MigratableObject

- (void)migrateFromVersion:(NSUInteger)oldVersion
                  toCoder:(NSCoder *)coder
{
    switch (oldVersion) {
        case 1:
            [self migrateFromVersion1:coder];
            break;
        case 2:
            [self migrateFromVersion2:coder];
            break;
        default:
            [NSException raise:NSInvalidArchiveOperationException
                        format:@"Cannot migrate from version %lu", oldVersion];
    }
}

@end
```
