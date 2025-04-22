# NSThread Functions

Functions for thread management and thread-local storage in mulle-objc.

## Thread Management

### Creation and Control

``` c
NSThread *MulleThreadGetCurrentThread(void);
NSThread *MulleThreadGetOrCreateCurrentThread(void);
void MulleThreadSetCurrentThreadUserInfo(id info);
```

### Current Thread

``` c
id MulleThreadGetCurrentThreadUserInfo(void);
mulle_thread_t MulleThreadGetCurrentOSThread(void);
```

## Thread Local Storage

### TLS Management

``` c
void MulleThreadSetObjectForKeyUTF8String(id value, char *key);
id MulleThreadObjectForKeyUTF8String(char *key);
```

### Thread Dictionary

``` c
mulle_thread_t MulleThreadObjectGetOSThread(NSThread *threadObject);
```

## Thread Priority

### Priority Control

``` c
// Thread priority control functions are not available
```

### Thread Names

``` c
// Thread name functions are part of the NSThread class interface
```

## Thread State

### State Information

``` c
// Thread state functions are part of the NSThread class interface
```

## Best Practices

1.  Clean up thread resources
2.  Use appropriate priorities
3.  Handle cancellation
4.  Manage thread-local storage
5.  Consider thread names for debugging

## Thread Safety

-   Thread functions are thread-safe
-   TLS operations are thread-local
-   Thread dictionary is per-thread
-   Consider cross-thread communication
