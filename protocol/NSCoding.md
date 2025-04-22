# NSCoding

Protocol for object serialization and deserialization in mulle-objc.

## Required Methods

- `-encodeWithCoder:` - Encode object state to coder
- `-initWithCoder:` - Initialize object from encoded data

## Optional Methods

### Class Support
- `-classForCoder` - Returns class used for coding (usually provided by NSObject)
- `-decodeWithCoder:` - Used by class clusters to decode after instance substitution

### Value Encoding/Decoding
- `-encodeValueOfObjCType:at:` - Encode value of given type
- `-decodeValueOfObjCType:at:` - Decode value of given type
- `-decodeBytesWithReturnedLength:` - Decode raw bytes
- `-encodeBytes:length:` - Encode raw bytes
- `-encodeObject:` - Encode an object
- `-decodeObject` - Decode an object

## Important Notes

1. For class clusters:
   - Must decode during `decodeWithCoder:`
   - Substitute instance in `-initWithCoder`
   - Only look at pure data in `-initWithCoder`, not references
   - Example: NSData can do all in `-initWithCoder:`, NSArray cannot

2. Future planned feature:
   - `-encodeDecodeWithCoder:` - Combined encode/decode method to reduce duplicate code
