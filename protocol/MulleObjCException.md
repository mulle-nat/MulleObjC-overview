# MulleObjCException

Protocol for exception handling in mulle-objc. Defines the interface that exception objects must implement.

## Required Methods

- `-name` - Returns the exception name as a string
- `-reason` - Returns the reason for the exception
- `-userInfo` - Returns additional information about the exception

## Optional Methods

- `-raise` - Raises the exception (default implementation provided)
- `-mulleRaiseWithStacktrace:` - Raises with a specific stacktrace

Note: NSException is the primary implementor of this protocol.
