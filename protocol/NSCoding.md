# NSCoding

Protocol for object serialization and deserialization.

## Required Methods

- `-initWithCoder:` - Initialize object from archive
- `-encodeWithCoder:` - Write object state to archive

Note: Used for object persistence and deep copying. All instance variables that affect -isEqual: should be encoded.
