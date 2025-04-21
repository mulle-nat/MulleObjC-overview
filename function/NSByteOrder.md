# NSByteOrder

Functions for handling byte order operations in mulle-objc.

## Byte Order Functions

### Basic Swapping
```c
short NSSwapShort(short value);
long NSSwapLong(long value);
long long NSSwapLongLong(long long value);
```

### Big-Endian Operations
```c
NSSwappedFloat NSSwapHostFloatToBig(float value);
NSSwappedDouble NSSwapHostDoubleToBig(double value);
```

### Little-Endian Operations
```c
NSSwappedFloat NSSwapHostFloatToLittle(float value);
NSSwappedDouble NSSwapHostDoubleToLittle(double value);
```

## Host Conversions

### Float Operations
```c
float NSSwapBigFloatToHost(NSSwappedFloat value);
float NSSwapLittleFloatToHost(NSSwappedFloat value);
```

### Double Operations
```c
double NSSwapBigDoubleToHost(NSSwappedDouble value);
double NSSwapLittleDoubleToHost(NSSwappedDouble value);
```

## Best Practices

1. Use host conversion functions
2. Consider platform endianness
3. Document byte order assumptions
4. Handle both endian cases
5. Test on different architectures

## Notes

- Functions are optimized for host architecture
- Some operations may be no-ops
- Consider network byte order
- Handle alignment requirements
