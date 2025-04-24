# NSLock Functions

Core functions for locking and synchronization in mulle-objc.

## Lock Management

### Instance Operations
- [`MulleObjCLockInstance`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCLockInstance+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSLock.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSLock.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Lock instance
- [`MulleObjCUnlockInstance`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCUnlockInstance+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSLock.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSLock.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Unlock instance
- [`MulleObjCTryLockInstance`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCTryLockInstance+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSLock.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSLock.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Try to lock instance

### Lock Sharing
- [`MulleObjCInstanceShareLock`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCInstanceShareLock+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSLock.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSLock.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Share lock between instances

## Thread Safety

### Lock State
- [`MulleObjCInstanceIsLocked`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCInstanceIsLocked+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSLock.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSLock.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Check if locked
- [`MulleObjCInstanceGetLockThread`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCInstanceGetLockThread+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSLock.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/NSLock.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Get lock owner

## Important Notes

1. Lock Usage
   - Always pair lock/unlock
   - Check lock ownership
   - Handle recursion
   - Share locks carefully

2. Thread Safety
   - Operations are thread-safe
   - Check thread ownership
   - Handle lock contention
   - Avoid deadlocks

3. Best Practices
   - Use appropriate lock type
   - Keep critical sections small
   - Document lock protocols
   - Handle lock failures

4. Performance
   - Minimize lock contention
   - Share locks when appropriate
   - Cache lock state
   - Consider alternatives
