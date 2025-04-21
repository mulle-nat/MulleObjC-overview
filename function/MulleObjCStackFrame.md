# MulleObjCStackFrame

Functions for managing stack frames and call traces in mulle-objc.

## Stack Frame Operations

### Frame Management
```c
void MulleObjCPushStackFrame(struct MulleObjCStackFrame *frame);
void MulleObjCPopStackFrame(void);
```

### Frame Information
```c
struct MulleObjCStackFrame *MulleObjCGetCurrentStackFrame(void);
NSUInteger MulleObjCGetStackFrameCount(void);
```

## Stack Traces

### Trace Generation
```c
NSArray *MulleObjCCreateStackTrace(void);
NSString *MulleObjCStackTraceDescription(void);
```

### Frame Analysis
```c
BOOL MulleObjCStackFrameIsValid(struct MulleObjCStackFrame *frame);
SEL MulleObjCStackFrameGetSelector(struct MulleObjCStackFrame *frame);
```

## Best Practices

1. Use stack frames for debugging
2. Clean up frames properly
3. Consider performance impact
4. Handle frame overflow
5. Document frame usage

## Thread Safety

- Stack frames are thread-local
- Safe for concurrent use
- Consider async operations
- Handle cross-thread traces
