# MulleObjCStackFrame Functions

Functions for stack frame management in mulle-objc.

## Stack Frame Operations

### Frame Access
- [`MulleObjCFrameAddress`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCFrameAddress+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/MulleObjCStackFrame.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/MulleObjCStackFrame.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Get frame address
- [`MulleObjCReturnAddress`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCReturnAddress+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/MulleObjCStackFrame.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/MulleObjCStackFrame.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Get return address
- [`MulleObjCCountFrames`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCCountFrames+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/MulleObjCStackFrame.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/MulleObjCStackFrame.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Count stack frames

### Legacy Support
- [`NSFrameAddress`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSFrameAddress+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/MulleObjCStackFrame.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/MulleObjCStackFrame.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Legacy frame address
- [`NSReturnAddress`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSReturnAddress+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/MulleObjCStackFrame.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/MulleObjCStackFrame.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Legacy return address
- [`NSCountFrames`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSCountFrames+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/MulleObjCStackFrame.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/MulleObjCStackFrame.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Legacy frame count

## Important Notes

1. Frame Management
   - Handle thread info
   - Clean up properly
   - Initialize correctly
   - Check state

2. Thread Safety
   - Thread-local frames
   - Handle concurrent access
   - Clean up on exit
   - Consider lifecycle

3. Best Practices
   - Initialize properly
   - Clean up resources
   - Handle errors
   - Document usage

4. Performance
   - Minimize allocations
   - Cache when possible
   - Handle cleanup
   - Consider inlining
