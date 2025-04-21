# NSRange

The `NSRange` structure represents a range with a location and length. It's commonly used for substring operations, array slicing, and other range-based operations.

## Structure

```objc
typedef struct mulle_range NSRange;
```

A range consists of:
- `location`: Starting position (NSUInteger)
- `length`: Number of items in range (NSUInteger)

## Constants

- `NSNotFound`: Special value indicating item was not found

## Functions

### Range Creation

* `NSRangeMake(location, length)` - Creates a range with given location and length
* `MulleMakeFullRange()` - Creates a range covering the maximum possible range (0 to -1)
* `MulleObjCMakeInvalidRange()` - Creates an invalid range

### Range Properties

* `NSRangeGetLocation(range)` - Returns the location component
* `NSRangeGetLength(range)` - Returns the length component
* `NSRangeGetMax(range)` - Returns the maximum position (location + length)
* `NSMaxRange(range)` - Legacy name for NSRangeGetMax

### Range Testing

* `NSRangeContainsLocation(location, range)` - Tests if location is within range
* `NSLocationInRange(location, range)` - Legacy name for NSRangeContainsLocation
* `NSRangeEqualToRange(range1, range2)` - Tests if two ranges are equal
* `NSEqualRanges(range1, range2)` - Legacy name for NSRangeEqualToRange
* `MulleObjCRangeIsValid(range)` - Tests if range is valid
* `MulleObjCRangeContainsRange(big, small)` - Tests if one range fully contains another
* `MulleObjCRangeIsCombinableRange(a, b)` - Tests if ranges can be combined
* `MulleObjCRangeIntersectsRange(a, b)` - Tests if ranges overlap

### Range Operations

* `NSRangeUnion(range1, range2)` - Combines two ranges into encompassing range
* `NSUnionRange(range1, range2)` - Legacy name for NSRangeUnion
* `NSRangeIntersect(range1, range2)` - Gets overlapping portion of two ranges
* `NSIntersectionRange(range1, range2)` - Legacy name for NSRangeIntersect
* `MulleObjCRangeSubtract(range1, range2, result)` - Subtracts range2 from range1
* `MulleObjCRangeInsert(range1, range2, result)` - Inserts range2 into range1
* `MulleObjCRangeCombine(aRange, bRange)` - Combines adjacent or overlapping ranges
* `MulleObjCRangeValidateAgainstLength(range, length)` - Validates range against a length

### Range Comparison

* `MulleObjCRangeCompare(a, b)` - Compares two ranges
* `MulleObjCRangePointerCompare(a, b)` - Compares two range pointers

### String Conversion

* `MulleObjCRangeUTF8String(range)` - Converts range to string representation

## Legacy Support

Several functions have both a modern and legacy name. The modern names use the `NSRange` prefix and are recommended for new code. Legacy names are provided for compatibility.
