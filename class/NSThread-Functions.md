# NSThread Functions

Core functions for thread management and thread-local storage in mulle-objc.

## Thread Access

### Current Thread
- [`MulleThreadGetCurrentThread`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleThreadGetCurrentThread+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Get current thread
- [`MulleThreadGetOrCreateCurrentThread`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleThreadGetOrCreateCurrentThread+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Get/create thread
- [`MulleThreadGetCurrentOSThread`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleThreadGetCurrentOSThread+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Get native handle

## Thread-Local Storage

### User Info
- [`MulleThreadGetCurrentThreadUserInfo`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleThreadGetCurrentThreadUserInfo+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Get thread info
- [`MulleThreadSetCurrentThreadUserInfo`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleThreadSetCurrentThreadUserInfo+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Set thread info
- [`MulleThreadSetObjectForKeyUTF8String`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleThreadSetObjectForKeyUTF8String+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Set dictionary value
- [`MulleThreadObjectForKeyUTF8String`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleThreadObjectForKeyUTF8String+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Get dictionary value

### Thread Object Access
- [`MulleThreadObjectGetOSThread`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleThreadObjectGetOSThread+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Get native handle

## TAO (Thread Access Optimization)

### Failure Handling
- [`MulleObjCGetTAOFailureHandler`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCGetTAOFailureHandler+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Get failure handler
- [`MulleObjCSetTAOFailureHandler`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCSetTAOFailureHandler+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Set failure handler
- [`MulleObjCTAOLogAndFail`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCTAOLogAndFail+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Default handler

### Testing
- [`MulleObjCTAOTest`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCTAOTest+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSThread.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Test TAO issues

## Important Notes

1. Thread Safety
   - Functions are thread-safe
   - Thread-local storage is per-thread
   - TAO ensures proper thread access

2. Memory Management
   - Thread objects retained appropriately
   - Clean up thread-local storage
   - Handle autorelease pools

3. Best Practices
   - Check thread ownership
   - Use TAO for thread safety
   - Handle failures gracefully
   - Test thread interactions

4. Restrictions
   - Some functions only work in MulleObjC threads
   - TAO violations cause termination
   - Thread dictionary keys must be UTF8
