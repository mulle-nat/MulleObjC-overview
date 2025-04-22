# NSByteOrder

Functions for byte order detection and management.

## Byte Order Detection

- `NSHostByteOrder(void)` - Returns current host byte order (NS_LittleEndian or NS_BigEndian)

## Constants

### MulleObjCByteOrder Enum
- `NS_UnknownByteOrder` - Unknown byte order
- `NS_LittleEndian` - Little-endian (Intel)
- `NS_BigEndian` - Big-endian (Power)

Note: Implementation relies on compiler macros (__BIG_ENDIAN__) for detection.
