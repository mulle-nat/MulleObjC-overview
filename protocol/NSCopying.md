# NSCopying

Protocol for object copying. Objects that implement this protocol can be copied.

## Required Methods

- `-copyWithZone:` - Creates and returns a copy of the receiver

Note: In mulle-objc, zones are deprecated but the method name is kept for compatibility. Use `-copy` instead of calling this directly.
