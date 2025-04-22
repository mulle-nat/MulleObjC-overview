# NSThread

## Overview

`NSThread` provides thread management capabilities in mulle-objc. It
implements a 1:1 thread mapping model and integrates deeply with the
runtime's thread safety mechanisms.

## Key Features

-   1:1 thread mapping
-   Thread lifecycle management
-   Resource management
-   Runtime integration
-   Thread-local storage

## Usage

### Thread Creation

``` objc
// Create and start a new thread
[NSThread detachNewThreadSelector:@selector(threadMain:)
                       toTarget:self
                     withObject:nil];

// Create without starting
NSThread *thread = [[NSThread alloc] initWithTarget:self
                                         selector:@selector(threadMain:)
                                           object:nil];
[thread start];
```

### Thread Management

``` objc
// Get current thread
NSThread *current = [NSThread currentThread];

// Thread operations
[NSThread sleepForTimeInterval:1.0];
[NSThread exit];

// Thread information
[thread mulleSetNameUTF8String:"WorkerThread"];
// Priority control not directly exposed
```

### Thread-Local Storage

``` objc
// Store thread-specific data
[thread setUserInfo:dict];
id threadInfo = [thread userInfo];
```

## Technical Details

### Core Methods

1.  **Thread Creation**:

    ``` objc
    + (void)detachNewThreadSelector:(SEL)selector 
                          toTarget:(id)target 
                        withObject:(id)argument;
    - (id)initWithTarget:(id)target
                selector:(SEL)selector
                  object:(id)argument;
    ```

2.  **Thread Control**:

    ``` objc
    - (void)start;
    + (void)exit;
    + (void)sleepForTimeInterval:(NSTimeInterval)interval;
    ```

3.  **Thread Information**:

    ``` objc
    + (NSThread *)currentThread;
    - (void)mulleSetNameUTF8String:(char *)name;
    - (char *)mulleNameUTF8String;
    ```

## Best Practices

1.  **Thread Creation**:
    -   Use autorelease pools
    -   Handle exceptions
    -   Clean up resources
2.  **Thread Safety**:
    -   Use proper synchronization
    -   Avoid shared mutable state
    -   Handle thread termination
3.  **Resource Management**:
    -   Clean up thread-local storage
    -   Release retained objects
    -   Handle thread lifecycle

## Important Considerations

1.  **Memory Management**:
    -   Thread-local autorelease pools
    -   Resource cleanup
    -   Memory barriers
2.  **Performance**:
    -   Thread creation cost
    -   Context switching
    -   Resource contention
3.  **Safety**:
    -   Exception handling
    -   Thread termination
    -   Resource leaks

## Use Cases

1.  **Worker Thread**:

    ``` objc
    + (void)threadMain:(id)argument
    {
        NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
        @try {
            // Thread work
            [self processData:argument];
        }
        @finally {
            [pool drain];
        }
    }
    ```

2.  **Background Processing**:

    ``` objc
    - (void)startBackgroundWork
    {
        [NSThread detachNewThreadSelector:@selector(backgroundWork:)
                               toTarget:self
                             withObject:nil];
    }
    ```

3.  **Thread Pool**:

    ``` objc
    - (void)setupThreadPool
    {
        for (NSUInteger i = 0; i < poolSize; i++)
        {
            NSThread *worker = [[NSThread alloc] initWithTarget:self
                                                     selector:@selector(workerMain:)
                                                       object:nil];
            [worker mulleSetNameUTF8String:mulle_sprintf("Worker%lu", i)];
            [worker start];
        }
    }
    ```
