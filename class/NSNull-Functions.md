# NSNull Functions

Functions for working with the NSNull singleton in mulle-objc.

## Singleton Access

### Instance Management
- [`NSNullObject`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSNullObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSNull.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSNull.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Get shared instance
- [`NSIsNullObject`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSIsNullObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSNull.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSNull.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Check if null object

### Thread Safety
- [`NSNullEnsureThreadSafety`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSNullEnsureThreadSafety+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSNull.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSNull.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Ensure thread safety
- [`NSNullLock`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSNullLock+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSNull.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSNull.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Lock null singleton
- [`NSNullUnlock`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSNullUnlock+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSNull.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSNull.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Unlock null singleton

## Comparison

### Identity Checks
- [`NSNullIsEqual`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSNullIsEqual+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSNull.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSNull.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Check equality
- [`NSNullHash`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSNullHash+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSNull.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSNull.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Get hash value

## Serialization

### Coding Support
- [`NSNullEncodeWithCoder`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSNullEncodeWithCoder+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSNull.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSNull.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Encode null object
- [`NSNullInitWithCoder`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSNullInitWithCoder+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSNull.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSNull.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Decode null object

## Best Practices

1. Use NSNull to represent null values in collections
2. Check for NSNull using NSIsNullObject
3. Consider thread safety in concurrent access
4. Handle NSNull in serialization
5. Don't create NSNull instances directly

## Thread Safety

- Singleton access is thread-safe
- No need for external synchronization
- Safe for concurrent collections
- Consider atomic operations
