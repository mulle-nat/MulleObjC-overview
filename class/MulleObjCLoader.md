# MulleObjCLoader

## Overview

`MulleObjCLoader` is a root class in mulle-objc that manages class and
category dependencies. It ensures proper initialization order across
frameworks and provides load-time control.

## Key Features

-   Dependency management
-   Framework initialization
-   Category loading
-   Load-time control
-   Runtime integration

## Usage

### Basic Loading

``` objc
// Define loader
@interface MyFrameworkLoader : MulleObjCLoader
@end

@implementation MyFrameworkLoader

+ (struct _mulle_objc_dependency *) dependencies
{
    static struct _mulle_objc_dependency   dependencies[] =
    {
       { @"Foundation", MULLE_OBJC_NO_VERSION, MULLE_OBJC_NO_VERSION },
       { NULL, MULLE_OBJC_NO_VERSION, MULLE_OBJC_NO_VERSION }
    };
    return dependencies;
}

@end
```

### Category Management

``` objc
// Category loader
@interface NSString_MyAdditions_Loader : MulleObjCLoader
@end

@implementation NSString_MyAdditions_Loader

+ (struct _mulle_objc_dependency *) dependencies
{
    static struct _mulle_objc_dependency   dependencies[] =
    {
       { @"NSString", MULLE_OBJC_NO_VERSION, MULLE_OBJC_NO_VERSION },
       { NULL, MULLE_OBJC_NO_VERSION, MULLE_OBJC_NO_VERSION }
    };
    return dependencies;
}

@end
```

## Technical Details

### Core Methods

1.  **Dependency Management**:

    ``` objc
    + (struct _mulle_objc_dependency *)dependencies;
    + (struct _mulle_objc_loadversion *)loadversion;
    ```

2.  **Load Control**:

    ``` objc
    + (void)load;
    + (void)unload;
    ```

### Implementation Details

1.  **Version Control**:

    ``` objc
    + (struct _mulle_objc_loadversion *)loadversion
    {
        static struct _mulle_objc_loadversion   version[] =
        {
           { MULLE_OBJC_VERSION, MULLE_OBJC_NO_VERSION }
        };
        return version;
    }
    ```

## Best Practices

1.  **Dependency Definition**:
    -   Order dependencies properly
    -   Specify version requirements
    -   Document dependencies
2.  **Load Management**:
    -   Handle load failures
    -   Clean up resources
    -   Validate dependencies
3.  **Performance**:
    -   Minimize load time
    -   Optimize dependencies
    -   Cache when possible

## Important Considerations

1.  **Load Order**:
    -   Dependency resolution
    -   Circular dependencies
    -   Version compatibility
2.  **Thread Safety**:
    -   Load-time synchronization
    -   Resource protection
    -   State management
3.  **Error Handling**:
    -   Load failures
    -   Version mismatches
    -   Missing dependencies

## Use Cases

1.  **Framework Loading**:

    ``` objc
    @interface MyFramework_Loader : MulleObjCLoader
    @end

    @implementation MyFramework_Loader

    + (struct _mulle_objc_dependency *)dependencies
    {
        static struct _mulle_objc_dependency deps[] =
        {
            { @"Foundation", 0x00010000, 0x00020000 },
            { @"CoreData", MULLE_OBJC_NO_VERSION, MULLE_OBJC_NO_VERSION },
            { NULL, MULLE_OBJC_NO_VERSION, MULLE_OBJC_NO_VERSION }
        };
        return deps;
    }

    @end
    ```

2.  **Category Loading**:

    ``` objc
    @interface NSObject_Extensions_Loader : MulleObjCLoader
    @end

    @implementation NSObject_Extensions_Loader

    + (struct _mulle_objc_dependency *)dependencies
    {
        static struct _mulle_objc_dependency deps[] =
        {
            { @"NSObject", MULLE_OBJC_NO_VERSION, MULLE_OBJC_NO_VERSION },
            { NULL, MULLE_OBJC_NO_VERSION, MULLE_OBJC_NO_VERSION }
        };
        return deps;
    }

    @end
    ```

3.  **Version Management**:

    ``` objc
    @interface VersionedLoader : MulleObjCLoader
    @end

    @implementation VersionedLoader

    + (struct _mulle_objc_loadversion *)loadversion
    {
        static struct _mulle_objc_loadversion version[] =
        {
            { MULLE_OBJC_VERSION, 0x00020000 }
        };
        return version;
    }

    @end
    ```

## Advanced Features

### Load Callbacks

``` objc
@implementation CustomLoader

+ (void)load
{
    [super load];
    // Perform custom initialization
}

+ (void)unload
{
    // Cleanup
    [super unload];
}

@end
```

### Dependency Validation

``` objc
@implementation ValidatingLoader

+ (void)validateDependencies
{
    struct _mulle_objc_dependency *deps = [self dependencies];
    while (deps->name)
    {
        [self validateDependency:deps];
        deps++;
    }
}

@end
```

### Load Order Control

``` objc
@implementation OrderedLoader

+ (struct _mulle_objc_dependency *)dependencies
{
    static struct _mulle_objc_dependency deps[] =
    {
        { @"First", MULLE_OBJC_NO_VERSION, MULLE_OBJC_NO_VERSION },
        { @"Second", MULLE_OBJC_NO_VERSION, MULLE_OBJC_NO_VERSION },
        { @"Third", MULLE_OBJC_NO_VERSION, MULLE_OBJC_NO_VERSION },
        { NULL, MULLE_OBJC_NO_VERSION, MULLE_OBJC_NO_VERSION }
    };
    return deps;
}

@end
```
