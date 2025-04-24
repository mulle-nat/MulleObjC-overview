# MulleObjCSingleton

Protocol for implementing singleton objects in mulle-objc. Provides thread-safe singleton initialization and access.

## Required Methods

### Instance Access
- [`+sharedInstance`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+sharedInstance+of+MulleObjCSingleton+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCSingleton.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCSingleton.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Get singleton instance

### Initialization
- [`+initializeSingleton`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+initializeSingleton+of+MulleObjCSingleton+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCSingleton.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCSingleton.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Initialize singleton instance

## Helper Functions

- [`MulleObjCInstanceIsaSingleton`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCInstanceIsaSingleton+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCSingleton.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCSingleton.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Check if instance is singleton
- [`MulleObjCClassIsaSingleton`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCClassIsaSingleton+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCSingleton.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCSingleton.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Check if class is singleton

## Usage Example

```objc
@interface MySingleton : NSObject <MulleObjCSingleton>
@end

@implementation MySingleton

+ (instancetype) sharedInstance
{
   return( MulleObjCSingletonCreate( self));
}

+ (void) initializeSingleton
{
   // Initialize singleton state here
}

@end

// Usage
id instance = [MySingleton sharedInstance];
```

## Important Notes

1. Thread Safety
   - Thread-safe initialization
   - Safe instance access
   - Handle concurrent calls
   - Consider TAO rules

2. Initialization
   - One-time setup
   - Handle dependencies
   - Clean up properly
   - Check state

3. Best Practices
   - Lazy initialization
   - Handle errors
   - Document usage
   - Test thoroughly

4. Performance
   - Cache instance
   - Minimize locks
   - Consider inlining
   - Handle contention

Note: This protocol provides thread-safe singleton implementation. The singleton instance is created lazily on first access and guaranteed to be initialized only once.
