# MulleObjCHashFunctions

Functions for computing hash values in mulle-objc.

## String Hashing

### UTF8 String Hashing
```c
uintptr_t MulleObjCHashUTF8String(char *s);
uintptr_t MulleObjCHashUTF8StringWithLength(char *s, size_t len);
```

### Unicode String Hashing
```c
uintptr_t MulleObjCHashUnicodeString(unichar *s, size_t len);
```

## Pointer Hashing
```c
uintptr_t MulleObjCHashPointer(void *p);
```

## Numeric Hashing

### Integer Types
```c
uintptr_t MulleObjCHashInt(int value);
uintptr_t MulleObjCHashLong(long value);
uintptr_t MulleObjCHashLongLong(long long value);
```

### Floating Point Types
```c
uintptr_t MulleObjCHashFloat(float value);
uintptr_t MulleObjCHashDouble(double value);
```

## Best Practices

1. Use appropriate hash function for data type
2. Consider string length for better distribution
3. Use pointer hashing for object identity
4. Handle collisions in hash tables
5. Test hash distribution for critical cases
