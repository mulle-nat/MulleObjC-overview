# NSFastEnumeration Protocol Functions

Functions for fast enumeration support in mulle-objc.

## Enumeration Support

### Basic Operations

- [`NSFastEnumerationGetItems`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSFastEnumerationGetItems+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/NSFastEnumeration.h) - Get items from enumeration

### State Management

- [`NSFastEnumerationBegin`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSFastEnumerationBegin+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/NSFastEnumeration.h) - Initialize enumeration state
- [`NSFastEnumerationEnd`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSFastEnumerationEnd+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/NSFastEnumeration.h) - Clean up enumeration state

## Mutation Checking

### Mutation Detection

- [`NSFastEnumerationGetMutations`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSFastEnumerationGetMutations+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/NSFastEnumeration.h) - Get mutation count
- [`NSFastEnumerationCheckMutations`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSFastEnumerationCheckMutations+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/NSFastEnumeration.h) - Verify no mutations occurred

## Buffer Management

### Buffer Operations

- [`NSFastEnumerationFillBuffer`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSFastEnumerationFillBuffer+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/NSFastEnumeration.h) - Fill enumeration buffer

### Optimization

- [`NSFastEnumerationBatchSize`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSFastEnumerationBatchSize+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/NSFastEnumeration.h) - Get optimal batch size
- [`NSFastEnumerationShouldCopyItems`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSFastEnumerationShouldCopyItems+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/NSFastEnumeration.h) - Check if items should be copied

## Best Practices

1. Handle mutations properly
2. Use appropriate buffer size
3. Implement state management
4. Consider performance
5. Document enumeration behavior

## Thread Safety

- Enumeration is not thread-safe
- Check for mutations
- Handle concurrent access
- Consider collection changes
