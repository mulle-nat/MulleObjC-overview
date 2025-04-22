# MulleObjCHashFunctions

Functions for computing hash values in mulle-objc. All of these are
thread safe.

## Byte Hashing

- `MulleObjCBytesHash(void *buf, NSUInteger length)` - Hashes arbitrary bytes
- `MulleObjCBytesHashRange(void *buf, NSRange range)` - Hashes bytes in range
- `MulleObjCBytesPartialHash(void *buf, NSUInteger length)` - Hashes up to 64 bytes
- `MulleObjCGetHashBytesRange(NSUInteger length)` - Gets optimal range for hashing

## String Hashing

- `MulleObjCHashUTF8String(char *s)` - Hashes UTF8 string
- `MulleObjCHashUTF8StringWithLength(char *s, size_t len)` - Hashes UTF8 string with known length
- `MulleObjCHashUnicodeString(unichar *s, size_t len)` - Hashes Unicode string

## Value Hashing

- `MulleObjCHashPointer(void *p)` - Hashes pointer value
- `MulleObjCHashInt(int value)` - Hashes integer
- `MulleObjCHashLong(long value)` - Hashes long
- `MulleObjCHashLongLong(long long value)` - Hashes long long
- `MulleObjCHashFloat(float value)` - Hashes float
- `MulleObjCHashDouble(double value)` - Hashes double

Note: All hash functions handle NULL input by returning -1. The partial hash function optimizes performance by limiting input size to 64 bytes.
