# MulleObject Functions

Core functions for MulleObject class in mulle-objc.

## Object Management

### Instance Operations
- [`MulleObjCInstanceGetAllocator`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCInstanceGetAllocator+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/function/MulleObjCAllocation.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/function/MulleObjCAllocation.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Get instance allocator
- [`MulleObjCInstanceGetClassNameUTF8String`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCInstanceGetClassNameUTF8String+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/function/MulleObjCAllocation.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/function/MulleObjCAllocation.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Get class name
- [`MulleObjCInstanceSetClass`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCInstanceSetClass+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/function/MulleObjCAllocation.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/function/MulleObjCAllocation.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Set class

## Thread Safety

### Lock Management
- [`MulleObjCLockInstance`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCLockInstance+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/function/MulleObjCAllocation.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/function/MulleObjCAllocation.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Lock instance
- [`MulleObjCUnlockInstance`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCUnlockInstance+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/function/MulleObjCAllocation.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/function/MulleObjCAllocation.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Unlock instance
- [`MulleObjCTryLockInstance`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCTryLockInstance+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/function/MulleObjCAllocation.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/function/MulleObjCAllocation.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Try to lock instance
- [`MulleObjCInstanceShareLock`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCInstanceShareLock+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/function/MulleObjCAllocation.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/function/MulleObjCAllocation.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Share lock between instances

## Important Notes

1. Thread Safety
   - Use locks properly
   - Share locks carefully
   - Check lock state
   - Handle recursion

2. Memory Management
   - Use correct allocator
   - Handle class changes
   - Clean up properly

3. Best Practices
   - Lock appropriately
   - Share locks safely
   - Check instances
   - Handle errors

4. Performance
   - Cache allocators
   - Minimize locking
   - Share locks
