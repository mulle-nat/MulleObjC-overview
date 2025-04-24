# NSAutoreleasePool Functions

Core functions for autorelease pool management in mulle-objc.

## Pool Management

### Basic Operations
- [`MulleAutoreleasePoolPush`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleAutoreleasePoolPush+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSAutoreleasePool.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSAutoreleasePool.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Push new pool
- [`MulleAutoreleasePoolPop`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleAutoreleasePoolPop+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSAutoreleasePool.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSAutoreleasePool.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Pop pool
- [`NSPushAutoreleasePool`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSPushAutoreleasePool+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSAutoreleasePool.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSAutoreleasePool.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Legacy push
- [`NSPopAutoreleasePool`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSPopAutoreleasePool+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSAutoreleasePool.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSAutoreleasePool.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Legacy pop

### Object Management
- [`NSAutoreleaseObject`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSAutoreleaseObject+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSAutoreleasePool.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSAutoreleasePool.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Autorelease object
- [`MulleObjCAutoreleaseAllocation`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCAutoreleaseAllocation+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSAutoreleasePool.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSAutoreleasePool.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Autorelease allocation

## Debug Support

### Pool Inspection
- [`MulleObjCDumpAutoreleasePoolsToFile`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCDumpAutoreleasePoolsToFile+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSAutoreleasePool.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSAutoreleasePool.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Dump pools to file
- [`MulleObjCDumpAutoreleasePoolsToFileIndexed`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCDumpAutoreleasePoolsToFileIndexed+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSAutoreleasePool.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSAutoreleasePool.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Dump indexed pools
- [`MulleObjCDumpAutoreleasePoolsToFILEWithOptions`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCDumpAutoreleasePoolsToFILEWithOptions+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSAutoreleasePool.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSAutoreleasePool.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Dump with options
- [`MulleObjCDumpAutoreleasePoolsFrame`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCDumpAutoreleasePoolsFrame+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSAutoreleasePool.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSAutoreleasePool.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Get frame number

## Important Notes

1. Thread Safety
   - Each thread has own pool stack
   - Operations are thread-local
   - Safe for concurrent use

2. Memory Management
   - Pools form LIFO stack
   - Balance push/pop calls
   - Clean up on thread exit

3. Best Practices
   - Use @autoreleasepool when possible
   - Keep pool scope narrow
   - Handle nested pools properly
   - Clean up in reverse order

4. Debugging
   - CSV dump format available
   - Pool hierarchy visible
   - Object tracking support
   - Memory leak detection
