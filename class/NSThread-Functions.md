# NSThread Functions

Functions for thread management and thread-local storage in mulle-objc.

## Thread Management

### Creation and Control
```c
void NSThreadStart(NSThread *thread);
void NSThreadExit(void);
void NSThreadDetach(SEL sel, id arg);
```

### Current Thread
```c
NSThread *NSCurrentThread(void);
BOOL NSThreadIsMain(void);
```

## Thread Local Storage

### TLS Management
```c
void *NSThreadGetSpecific(NSString *key);
void NSThreadSetSpecific(NSString *key, void *value);
```

### Thread Dictionary
```c
NSMutableDictionary *NSThreadGetThreadDictionary(void);
void NSThreadSetThreadDictionary(NSMutableDictionary *dict);
```

## Thread Priority

### Priority Control
```c
double NSThreadGetPriority(void);
void NSThreadSetPriority(double priority);
```

### Thread Names
```c
void NSThreadSetName(NSString *name);
NSString *NSThreadGetName(void);
```

## Thread State

### State Information
```c
BOOL NSThreadIsCancelled(void);
BOOL NSThreadIsExecuting(void);
BOOL NSThreadIsFinished(void);
```

## Best Practices

1. Clean up thread resources
2. Use appropriate priorities
3. Handle cancellation
4. Manage thread-local storage
5. Consider thread names for debugging

## Thread Safety

- Thread functions are thread-safe
- TLS operations are thread-local
- Thread dictionary is per-thread
- Consider cross-thread communication
