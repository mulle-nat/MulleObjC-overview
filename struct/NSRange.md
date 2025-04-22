# NSRange

Structure for representing a range with location and length in mulle-objc.

## Structure Definition

```objc
typedef struct _NSRange {
   NSUInteger location;  // Starting index
   NSUInteger length;    // Number of items
} NSRange;
```

## Functions

### Range Creation
- [`NSMakeRange`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSMakeRange+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/struct/NSRange.c+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/struct/NSRange.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Create range struct
- [`NSEmptyRange`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSEmptyRange+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/struct/NSRange.c+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/struct/NSRange.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Create empty range

### Range Operations
- [`NSEqualRanges`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSEqualRanges+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/struct/NSRange.c+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/struct/NSRange.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Compare ranges
- [`NSLocationInRange`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSLocationInRange+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/struct/NSRange.c+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/struct/NSRange.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Check if location in range
- [`NSMaxRange`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSMaxRange+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/struct/NSRange.c+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/struct/NSRange.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Get maximum location

### Range Manipulation
- [`NSUnionRange`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSUnionRange+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/struct/NSRange.c+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/struct/NSRange.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Combine ranges
- [`NSIntersectionRange`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+NSIntersectionRange+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/struct/NSRange.c+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/struct/NSRange.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Intersect ranges

## Usage Example

```objc
// Create range
NSRange range = NSMakeRange(0, 10);

// Check if location is in range
BOOL contains = NSLocationInRange(5, range);  // YES

// Get maximum location
NSUInteger max = NSMaxRange(range);  // 10

// Combine ranges
NSRange range1 = NSMakeRange(0, 5);
NSRange range2 = NSMakeRange(3, 5);
NSRange union = NSUnionRange(range1, range2);  // {0, 8}

// Intersect ranges
NSRange intersection = NSIntersectionRange(range1, range2);  // {3, 2}
```

## Important Notes

1. Range Validation
   - Check for empty ranges
   - Validate indices
   - Handle overflow
   - Consider bounds

2. Performance
   - Pass by value
   - Avoid copying
   - Cache results
   - Use stack allocation

3. Best Practices
   - Check for overflow
   - Validate input
   - Document assumptions
   - Test edge cases
   - Consider zero length
