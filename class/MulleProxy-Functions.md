# MulleProxy Functions

Functions for proxy object creation and message forwarding in mulle-objc.

## Proxy Creation

### Basic Creation
- [`MulleProxyCreate`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleProxyCreate+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Creates proxy for target
- [`MulleProxyCreateWithZone`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleProxyCreateWithZone+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Creates proxy in zone

### Specialized Proxies
- [`MulleProxyCreateForClass`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleProxyCreateForClass+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Creates class proxy
- [`MulleProxyCreateWithHandler`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleProxyCreateWithHandler+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Creates proxy with handler

## Message Handling

### Forward Operations
- [`MulleProxyForwardingTargetForSelector`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleProxyForwardingTargetForSelector+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Gets forwarding target
- [`MulleProxyForwardInvocation`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleProxyForwardInvocation+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Forwards invocation

### Method Resolution
- [`MulleProxyRespondsToSelector`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleProxyRespondsToSelector+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Checks selector support
- [`MulleProxyMethodSignatureForSelector`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleProxyMethodSignatureForSelector+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Gets method signature

## Proxy Management

### Target Operations
- [`MulleProxyGetTarget`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleProxyGetTarget+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Gets proxy target
- [`MulleProxySetTarget`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleProxySetTarget+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Sets proxy target

### State Information
- [`MulleProxyIsProxy`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleProxyIsProxy+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Checks if object is proxy
- [`MulleProxyGetProxyClass`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleProxyGetProxyClass+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/class/MulleProxy.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Gets proxy class

## Best Practices

1. Handle target lifecycle
2. Implement proper forwarding
3. Consider memory management
4. Document proxy behavior
5. Handle nil targets

## Thread Safety

- Proxy creation is thread-safe
- Target access needs synchronization
- Consider message ordering
- Handle concurrent forwarding
