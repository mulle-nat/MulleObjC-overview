# NSCoding

Protocol for object serialization and deserialization in mulle-objc.

## Required Methods

- [`-encodeWithCoder:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+encodeWithCoder+of+NSCoding+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/NSCoding.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/NSCoding.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Encode object state to coder
- [`-initWithCoder:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+initWithCoder+of+NSCoding+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/NSCoding.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/NSCoding.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Initialize object from encoded data

## Optional Methods

### Class Support
- [`-classForCoder`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+classForCoder+of+NSCoding+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/NSCoding.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/NSCoding.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Returns class used for coding (usually provided by NSObject)
- [`-decodeWithCoder:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+decodeWithCoder+of+NSCoding+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/NSCoding.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/NSCoding.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Used by class clusters to decode after instance substitution

### Value Encoding/Decoding
- [`-encodeValueOfObjCType:at:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+encodeValueOfObjCType:at+of+NSCoding+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/NSCoding.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/NSCoding.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Encode value of given type
- [`-decodeValueOfObjCType:at:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+decodeValueOfObjCType:at+of+NSCoding+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/NSCoding.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/NSCoding.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Decode value of given type
- [`-decodeBytesWithReturnedLength:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+decodeBytesWithReturnedLength+of+NSCoding+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/NSCoding.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/NSCoding.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Decode raw bytes
- [`-encodeBytes:length:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+encodeBytes:length+of+NSCoding+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/NSCoding.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/NSCoding.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Encode raw bytes
- [`-encodeObject:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+encodeObject+of+NSCoding+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/NSCoding.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/NSCoding.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Encode an object
- [`-decodeObject`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+decodeObject+of+NSCoding+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/NSCoding.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/NSCoding.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Decode an object

## Important Notes

1. For class clusters:
   - Must decode during `decodeWithCoder:`
   - Substitute instance in `-initWithCoder`
   - Only look at pure data in `-initWithCoder`, not references
   - Example: NSData can do all in `-initWithCoder:`, NSArray cannot

2. Future planned feature:
   - `-encodeDecodeWithCoder:` - Combined encode/decode method to reduce duplicate code
