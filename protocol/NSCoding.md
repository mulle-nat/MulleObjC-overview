# NSCoding

The `NSCoding` protocol enables objects to encode and decode their instance variables, providing support for object serialization, archiving, and persistence.

## Required Methods

* `encodeWithCoder:` - Encodes an object's state into a coder
* `initWithCoder:` - Creates an object from previously encoded data

## Optional Methods

### Class Support

* `classForCoder` - Returns class used for encoding (usually provided by NSObject)
* `decodeWithCoder:` - Decodes an object's state from a coder

### Direct Value Encoding/Decoding

* `encodeValueOfObjCType:at:` - Encodes a value of a specific type
* `decodeValueOfObjCType:at:` - Decodes a value of a specific type
* `encodeBytes:length:` - Encodes raw bytes
* `decodeBytesWithReturnedLength:` - Decodes raw bytes
* `encodeObject:` - Encodes a single object
* `decodeObject` - Decodes a single object

## Class Cluster Support

For class clusters (like NSArray, NSString), special handling is required:

1. Decode data during `decodeWithCoder:`
2. Substitute the correct instance type in `initWithCoder:`
3. Only examine pure data in `initWithCoder:`, not object references

Example:
- NSData can handle everything in `initWithCoder:`
- NSArray must use both methods due to object references

## Implementation Notes

* Objects that adopt NSCoding can be:
  - Archived to disk
  - Copied to pasteboard
  - Sent across process boundaries
  - Stored in user defaults
* All instance variables that need to persist must be encoded
* Implementations should handle version compatibility
* Future versions may support `encodeDecodeWithCoder:` to simplify common encode/decode patterns
