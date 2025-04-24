# MulleObjC Protocol System

The MulleObjC protocol system defines a hierarchy of protocols for thread safety, mutability, and object behavior guarantees.

## Thread Safety Protocols

### MulleObjCThreadSafe
Objects that can be safely accessed from multiple threads.

Optional Methods:
- [`mulleIsThreadSafe`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+mulleIsThreadSafe+of+MulleObjCThreadSafe+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCProtocol.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCProtocol.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Returns whether the object is thread-safe
- [`mulleThreadSafeCopy`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+mulleThreadSafeCopy+of+MulleObjCThreadSafe+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCProtocol.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCProtocol.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Returns a thread-safe copy

### MulleObjCThreadUnsafe
Default protocol for objects that must be accessed from a single thread.

Optional Methods:
- [`mulleIsThreadSafe`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+mulleIsThreadSafe+of+MulleObjCThreadUnsafe+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCProtocol.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCProtocol.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Returns whether the object is thread-safe (returns NO)

## Immutability Protocol

### MulleObjCImmutable
Objects whose internal state does not change after initialization.

Optional Methods:
- [`copy`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+copy+of+MulleObjCImmutable+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCProtocol.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCProtocol.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Returns a copy of the object
- [`immutableCopy`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+immutableCopy+of+MulleObjCImmutable+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCProtocol.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCProtocol.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Returns an immutable copy

## Value and Container Protocols

### MulleObjCValue
Empty marker protocol indicating the object is a value type.

### MulleObjCContainer
Empty marker protocol indicating the object is a container type.

### MulleObjCContainerProperty
Protocol for container property access.

Required Methods:
- [`addObject:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+addObject+of+MulleObjCContainerProperty+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCProtocol.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCProtocol.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Adds an object to the container
- [`removeObject:`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+removeObject+of+MulleObjCContainerProperty+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCProtocol.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCProtocol.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Removes an object from the container

## Memory Management Protocol

### MulleObjCPlaceboRetainCount
Optional protocol for objects with custom retain counting.

Optional Methods:
- [`retain`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+retain+of+MulleObjCPlaceboRetainCount+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCProtocol.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCProtocol.h+and+there+may+also+be+tests+for+it+in+the+test/+folder)
- [`autorelease`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+autorelease+of+MulleObjCPlaceboRetainCount+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCProtocol.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCProtocol.h+and+there+may+also+be+tests+for+it+in+the+test/+folder)
- [`release`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+release+of+MulleObjCPlaceboRetainCount+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCProtocol.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCProtocol.h+and+there+may+also+be+tests+for+it+in+the+test/+folder)
- [`retainCount`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+retainCount+of+MulleObjCPlaceboRetainCount+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCProtocol.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCProtocol.h+and+there+may+also+be+tests+for+it+in+the+test/+folder)
- [`finalize`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+finalize+of+MulleObjCPlaceboRetainCount+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCProtocol.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCProtocol.h+and+there+may+also+be+tests+for+it+in+the+test/+folder)
- [`dealloc`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+dealloc+of+MulleObjCPlaceboRetainCount+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCProtocol.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCProtocol.h+and+there+may+also+be+tests+for+it+in+the+test/+folder)

## Protocol Combinations

The header provides convenient protocol combinations for common use cases:

- `MulleObjCValueProtocols`: For immutable value types
- `MulleObjCMutableValueProtocols`: For mutable value types  
- `MulleObjCContainerProtocols`: For immutable containers
- `MulleObjCMutableContainerProtocols`: For mutable containers
- `MulleObjCImmutableProtocols`: For other immutable objects
- `MulleObjCMutableProtocols`: For other mutable objects
