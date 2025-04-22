# NSCondition Functions

Core functions for condition variable synchronization in mulle-objc.

## Condition Management

### Instance Operations
- [`pthread_cond_init`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+pthread_cond_init+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSCondition.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSCondition.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Initialize condition
- [`pthread_cond_destroy`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+pthread_cond_destroy+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSCondition.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSCondition.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Destroy condition

### Wait/Signal Operations
- [`pthread_cond_wait`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+pthread_cond_wait+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSCondition.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSCondition.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Wait on condition
- [`pthread_cond_signal`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+pthread_cond_signal+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSCondition.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSCondition.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Signal condition
- [`pthread_cond_broadcast`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+pthread_cond_broadcast+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSCondition.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSCondition.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Broadcast condition

## Important Notes

1. Usage
   - Always hold mutex when waiting
   - Check conditions in loop
   - Handle spurious wakeups
   - Signal after state change

2. Thread Safety
   - Operations are thread-safe
   - Mutex protects condition
   - Handle multiple waiters
   - Consider broadcast needs

3. Best Practices
   - Document condition protocol
   - Keep mutex scope small
   - Handle timeouts
   - Check return values

4. Performance
   - Minimize wait time
   - Use appropriate signaling
   - Consider contention
   - Cache condition state