# NSProxy

Root class for proxy objects in mulle-objc. Provides the base implementation for objects that stand in for other objects.

## Implemented Protocols
- MulleObjCRootObject
- NSObject

## Methods

### Proxy Identification
- [`+isProxy`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+isProxy+of+NSProxy+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSProxy.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSProxy.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Returns NO for proxy class (thread-safe)
- [`-isProxy`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+isProxy+of+NSProxy+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSProxy.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSProxy.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Returns YES for proxy instances

## Important Notes

1. Root Class
   - Like NSObject, but specifically for proxies
   - Inherits all methods from NSObject protocol

2. Implementation Details
   - Minimal implementation
   - Provides foundation for proxy subclasses
   - Thread-safe class method marked with MULLE_OBJC_THREADSAFE_METHOD

3. Usage
   - Base class for creating proxy objects
   - Subclasses should implement appropriate forwarding methods
