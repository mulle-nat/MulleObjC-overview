# NSRange

A structure representing a range with location and length, used throughout MulleObjC for substring operations, array slicing, and other range-based operations.

## Structure
```c
typedef struct mulle_range   NSRange;
typedef NSRange             *NSRangePointer;

struct mulle_range {
    NSUInteger location;  // Starting position
    NSUInteger length;    // Number of items
};
```

## Constants
- `NSNotFound` - Special value indicating item was not found

## Creation Functions
- `NSRangeMake(location, length)` - Creates range with given location and length
- `MulleMakeFullRange()` - Creates range covering maximum possible range (0 to -1)
- `MulleObjCMakeInvalidRange()` - Creates an invalid range

## Access Functions
- `NSRangeGetLocation(range)` - Gets location
- `NSRangeGetLength(range)` - Gets length
- `NSRangeGetMax(range)` - Gets maximum position (location + length)

## Testing Functions
- `NSRangeContainsLocation(range, location)` - Tests if location is within range
- `NSRangeEqualToRange(range1, range2)` - Tests range equality
- `MulleObjCRangeIsValid(range)` - Tests range validity
- `MulleObjCRangeContainsRange(big, small)` - Tests if one range contains another
- `MulleObjCRangeIntersectsRange(a, b)` - Tests range overlap

## Operation Functions
- `NSRangeUnion(range1, range2)` - Combines ranges into encompassing range
- `NSRangeIntersect(range1, range2)` - Gets overlapping portion
- `MulleObjCRangeSubtract(range1, range2, result)` - Subtracts range2 from range1
- `MulleObjCRangeInsert(range1, range2, result)` - Inserts range2 into range1
- `MulleObjCRangeValidateAgainstLength(range, length)` - Validates against length

## Comparison Functions
- `MulleObjCRangeCompare(a, b)` - Compares ranges
- `MulleObjCRangePointerCompare(a, b)` - Compares range pointers

## Convenience Macro
```c
MulleObjCRangeFor( range, name) // Iterates over range with variable name
```

Note: Legacy function names (e.g., NSMaxRange) are provided for compatibility but modern NSRange-prefixed names are preferred.
