# MulleObjCException

The `MulleObjCException` protocol defines the interface for exception handling in mulle-objc. It provides the base functionality for creating and raising exceptions.

## Optional Methods

* `raise` - Raises the exception (implemented by MulleObjCException)
* `UTF8String` - Returns a C string representation of the exception

## Exception Throwing Macros

### Standard Exceptions
* `MulleObjCThrowInvalidArgumentException(...)` - Invalid argument
* `MulleObjCThrowInvalidIndexException(index)` - Index out of bounds
* `MulleObjCThrowInvalidRangeException(range)` - Invalid range
* `MulleObjCThrowInternalInconsistencyException(...)` - Internal logic error
* `MulleObjCThrowErrnoException(...)` - System error

### Implementation Notes

1. All exception macros vector through the foundation data of the compiled universe
2. In standard configuration:
   - MulleObjCStandardFoundation-startup (or derived Foundation-startup)
   - Installs NSException generating code in universe function vectors
   - Creates and raises NSException in MulleObjCStandardFoundation

## Example Usage

```objc
// Throwing an invalid argument exception
if (argument == nil) {
    MulleObjCThrowInvalidArgumentException(@"argument cannot be nil");
}

// Throwing an index out of bounds exception
if (index >= count) {
    MulleObjCThrowInvalidIndexException(index);
}

// Throwing a range exception
if (!MulleObjCRangeIsValid(range)) {
    MulleObjCThrowInvalidRangeException(range);
}

// Throwing an internal inconsistency exception
if (invalidState) {
    MulleObjCThrowInternalInconsistencyException(@"Invalid state detected");
}

// Throwing a system error exception
if (error) {
    MulleObjCThrowErrnoException(@"System error occurred");
}
```

## Implementation Tips

1. Never mark ObjC methods (like `-raise`) with `__attribute__((noreturn))`
   - This is incorrect due to potential `self == nil` cases
2. Base your exception subclasses on this protocol
3. The protocol automatically implements `-raise` for you

## Thread Safety

Exception throwing functions are marked with `MULLE_C_NO_RETURN` indicating they never return to the caller.
