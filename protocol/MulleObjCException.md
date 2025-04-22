# MulleObjCException

Protocol for exception handling in mulle-objc. Defines the minimal interface that exception objects must implement.

## Optional Methods

- `-raise` - Raises the exception (default implementation provided by MulleObjCException class)
- `-UTF8String` - Returns a string representation of the exception (default implementation returns the class name)

Note: This is a minimal protocol that provides basic exception functionality. The actual NSException class in Foundation provides additional features like name, reason and userInfo.
