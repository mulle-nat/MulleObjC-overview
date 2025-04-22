# MulleObjCRuntimeObject

Protocol for objects that need direct runtime access. This is an internal protocol used by the mulle-objc runtime.

## Required Methods

- `-methodForSelector:` - Returns the implementation for a selector
- `-mulleGetClass` - Returns the object's class
- `-mulleLookupIMP:` - Looks up method implementation

Note: This protocol is implemented by NSObject and should not be implemented by other classes.
