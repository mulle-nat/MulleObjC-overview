# NSObject+NSCodingSupport

Category that provides foundational support for object archiving and serialization in mulle-objc.

## Methods

### Version Control
- [`+version`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+version+of+NSObject+NSCodingSupport+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject%2BNSCodingSupport.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject%2BNSCodingSupport.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Returns class version
- [`-version`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+version+of+NSObject+NSCodingSupport+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject%2BNSCodingSupport.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject%2BNSCodingSupport.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Returns instance version

### Class Substitution
- [`+classForCoder`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+classForCoder+of+NSObject+NSCodingSupport+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject%2BNSCodingSupport.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject%2BNSCodingSupport.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Returns class for encoding
- [`-classForCoder`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+classForCoder+of+NSObject+NSCodingSupport+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject%2BNSCodingSupport.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject%2BNSCodingSupport.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Returns instance-specific class
- [`+classNameForCoder`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+classNameForCoder+of+NSObject+NSCodingSupport+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject%2BNSCodingSupport.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject%2BNSCodingSupport.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Returns class name for encoding

### Object Replacement
- [`-replacementObjectForCoder:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+replacementObjectForCoder+of+NSObject+NSCodingSupport+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject%2BNSCodingSupport.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject%2BNSCodingSupport.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Returns replacement for encoding
- [`-awakeAfterUsingCoder:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+awakeAfterUsingCoder+of+NSObject+NSCodingSupport+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject%2BNSCodingSupport.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSObject%2BNSCodingSupport.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Post-decode processing

## Usage Example

```objc
// Implementing NSCoding
@interface MyObject : NSObject <NSCoding>
@end

@implementation MyObject

- (void)encodeWithCoder:(NSCoder *)coder
{
    [coder encodeObject:self.name forKey:@"name"];
    [coder encodeInteger:self.value forKey:@"value"];
}

- (id)initWithCoder:(NSCoder *)coder
{
    self = [super init];
    if (self) {
        _name = [coder decodeObjectForKey:@"name"];
        _value = [coder decodeIntegerForKey:@"value"];
    }
    return self;
}

@end
```

## Important Notes

1. Version Management
   - Increment versions properly
   - Handle all versions
   - Document changes

2. Data Migration
   - Convert between versions
   - Validate data
   - Handle missing fields

3. Error Handling
   - Validate decoded data
   - Handle corruption
   - Provide defaults

4. Compatibility
   - Version handling
   - Forward compatibility
   - Backward compatibility

5. Security
   - Data validation
   - Safe decoding
   - Secure storage
