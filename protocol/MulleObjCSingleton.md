# MulleObjCSingleton

The `MulleObjCSingleton` protocol provides support for implementing the
Singleton design pattern in mulle-objc. It ensures that a class has only one
instance and provides a global point of access to it.

## Optional Methods

-   `initialize` - Class initialization method
-   `sharedInstance` - Returns the singleton instance

## Key Features

1.  **Instance Creation**
    -   Must use `sharedInstance` for access
    -   `alloc` creates separate instance
    -   Cannot perform `-mullePerformFinalize`
2.  **Thread Safety**
    -   Must be thread-safe
    -   Subclass responsible for thread safety
    -   No default `MulleObjCThreadSafe` conformance

## Global Functions

### Creation and Marking

``` objc
// Create singleton instance
id MulleObjCSingletonCreate(Class self);

// Mark class as singleton
void MulleObjCSingletonMarkClassAsSingleton(Class self);
```

### Instance Checking

``` objc
// Check if instance is singleton
BOOL MulleObjCInstanceIsSingleton(id obj);
```

### Ephemeral Control

``` objc
// Set singleton as ephemeral
void MulleObjCSingletonSetEphemeral(BOOL flag);
```

## Implementation Example

``` objc
@interface MySingleton : NSObject <MulleObjCSingleton>
@end

@implementation MySingleton

+ (void)initialize
{
    // Must call if overriding initialize
    MulleObjCSingletonMarkClassAsSingleton(self);
}

// Optional: Protocol implements this automatically
+ (instancetype)sharedInstance
{
    return MulleObjCSingletonCreate(self);
}

// Implement thread-safe initialization
- (instancetype)init
{
    self = [super init];
    if (self) {
        // Thread-safe initialization
    }
    return self;
}

@end
```

## Usage Guidelines

1.  **Initialization**
    -   Override `initialize` if needed
    -   Call `MulleObjCSingletonMarkClassAsSingleton`
    -   Implement thread-safe init
2.  **Access Control**
    -   Use `sharedInstance` for access
    -   Avoid direct allocation
    -   Consider thread safety
3.  **Environment Control**
    -   Use `MULLE_OBJC_EPHEMERAL_SINGLETON` environment variable
    -   Set before singleton initialization

## Best Practices

1.  Ensure thread-safe initialization
2.  Implement proper memory management
3.  Consider lazy initialization
4.  Document thread safety guarantees
5.  Handle inheritance carefully

## Notes

-   Cannot finalize singletons
-   Ephemeral setting must be early
-   Thread safety is mandatory
-   Separate instances possible via alloc
