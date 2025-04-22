# NSByteOrder Functions

Functions for byte order handling in mulle-objc.

## Byte Order Operations

### Basic Functions
- [`NSHostByteOrder`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSHostByteOrder+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/NSByteOrder.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/NSByteOrder.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Get host byte order
- [`NSSwapShort`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSSwapShort+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/NSByteOrder.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/NSByteOrder.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Swap 16-bit value
- [`NSSwapLong`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSSwapLong+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/NSByteOrder.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/NSByteOrder.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Swap 32-bit value
- [`NSSwapLongLong`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSSwapLongLong+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/NSByteOrder.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/NSByteOrder.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Swap 64-bit value

### Host Order Conversion
- [`NSSwapHostShortToBig`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSSwapHostShortToBig+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/NSByteOrder.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/NSByteOrder.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Host to big-endian (16-bit)
- [`NSSwapHostLongToBig`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSSwapHostLongToBig+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/NSByteOrder.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/NSByteOrder.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Host to big-endian (32-bit)
- [`NSSwapHostLongLongToBig`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSSwapHostLongLongToBig+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/NSByteOrder.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/NSByteOrder.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Host to big-endian (64-bit)

### Network Order Conversion
- [`NSSwapBigShortToHost`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSSwapBigShortToHost+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/NSByteOrder.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/NSByteOrder.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Big-endian to host (16-bit)
- [`NSSwapBigLongToHost`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSSwapBigLongToHost+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/NSByteOrder.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/NSByteOrder.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Big-endian to host (32-bit)
- [`NSSwapBigLongLongToHost`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSSwapBigLongLongToHost+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/NSByteOrder.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/function/NSByteOrder.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Big-endian to host (64-bit)

## Important Notes

1. Byte Order
   - Check host order
   - Handle endianness
   - Swap when needed
   - Document usage

2. Performance
   - Use native order
   - Minimize swaps
   - Cache results
   - Consider alignment

3. Best Practices
   - Check platform
   - Handle all cases
   - Document swaps
   - Test thoroughly

4. Usage
   - Network protocols
   - File formats
   - Binary data
   - Cross-platform code
