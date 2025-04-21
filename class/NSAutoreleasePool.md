# NSAutoreleasePool

## Overview

`NSAutoreleasePool` provides automatic object deallocation through autorelease pools in mulle-objc. It manages thread-local autorelease pools with a hierarchical structure and configurable behavior.

## Key Features

- Thread-local autorelease pools
- Hierarchical pool structure
- Configurable behavior
- Automatic memory management
- Pool stack management

## Usage

### Basic Pool Usage

```objc
NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
// Code that creates autoreleased objects
[pool drain];
```

### Nested Pools

```objc
NSAutoreleasePool *outerPool = [[NSAutoreleasePool alloc] init];
{
    NSAutoreleasePool *innerPool = [[NSAutoreleasePool alloc] init];
    // Code with autoreleased objects
    [innerPool drain];
}
[outerPool drain];
```

### Thread-Local Pools

```objc
+ (void)threadMain
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    // Thread work with autoreleased objects
    [pool drain];
}
```

## Technical Details

### Core Methods

1. **Pool Management**:
   ```objc
   + (void)addObject:(id)obj;
   - (void)addObject:(id)obj;
   - (void)drain;
   ```

2. **Pool Information**:
   ```objc
   - (NSAutoreleasePool *)parent;
   - (BOOL)isValid;
   ```

### Thread Integration

1. **Thread Setup**:
   ```objc
   + (void)setupThreading;
   + (void)exitThread;
   ```

2. **Pool Configuration**:
   ```objc
   + (void)setPoolConfiguration:(struct _mulle_objc_poolconfiguration *)config;
   + (struct _mulle_objc_poolconfiguration *)poolConfiguration;
   ```

## Best Practices

1. **Pool Usage**:
   - Create pools at thread entry points
   - Use nested pools for memory peaks
   - Drain pools promptly

2. **Memory Management**:
   - Balance pool creation/draining
   - Handle exceptions properly
   - Clean up thread pools

3. **Performance**:
   - Use appropriate pool scope
   - Consider pool overhead
   - Optimize object autoreleasing

## Important Considerations

1. **Thread Safety**:
   - Pools are thread-local
   - No cross-thread pool access
   - Clean thread termination

2. **Resource Management**:
   - Pool hierarchy maintenance
   - Exception handling
   - Resource cleanup

3. **Performance Impact**:
   - Pool creation cost
   - Autorelease overhead
   - Memory usage

## Use Cases

1. **Event Loop**:
   ```objc
   - (void)runEventLoop
   {
       while ([self isRunning])
       {
           NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
           [self processNextEvent];
           [pool drain];
       }
   }
   ```

2. **Batch Processing**:
   ```objc
   - (void)processBatch:(NSArray *)items
   {
       NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
       for (id item in items)
       {
           if (item % 100 == 0)
           {
               [pool drain];
               pool = [[NSAutoreleasePool alloc] init];
           }
           [self processItem:item];
       }
       [pool drain];
   }
   ```

3. **Thread Management**:
   ```objc
   + (void)threadMain:(id)argument
   {
       NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
       @try {
           [self performThreadWork:argument];
       }
       @finally {
           [pool drain];
       }
   }
   ```
