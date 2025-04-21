# MulleObjCExceptionHandler

Functions for handling exceptions in mulle-objc.

## Exception Handling

### Handler Registration
```c
void MulleObjCSetExceptionHandler(MulleObjCExceptionHandler *handler);
MulleObjCExceptionHandler *MulleObjCGetExceptionHandler(void);
```

### Exception Throwing
```c
void MulleObjCThrowException(NSString *name, NSString *reason, NSDictionary *userInfo);
void MulleObjCThrowInvalidArgumentException(NSString *format, ...);
```

## Stack Management

### Stack Operations
```c
void MulleObjCPushExceptionFrame(struct MulleObjCExceptionFrame *frame);
void MulleObjCPopExceptionFrame(void);
```

### Stack Information
```c
struct MulleObjCExceptionFrame *MulleObjCGetCurrentExceptionFrame(void);
NSUInteger MulleObjCGetExceptionFrameCount(void);
```

## Exception Types

### Standard Exceptions
```c
void MulleObjCThrowInvalidIndexException(NSUInteger idx);
void MulleObjCThrowInternalInconsistencyException(NSString *format, ...);
void MulleObjCThrowInvalidRangeException(NSRange range);
```

### System Exceptions
```c
void MulleObjCThrowErrnoException(NSString *format, ...);
```

## Best Practices

1. Always use try-catch blocks
2. Clean up resources in finally blocks
3. Provide meaningful exception messages
4. Handle all expected exceptions
5. Document exception conditions

## Thread Safety

- Exception handlers are thread-local
- Stack frames are thread-specific
- Exception throwing is thread-safe
- Consider cross-thread exception impact
