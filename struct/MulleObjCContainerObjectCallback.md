# MulleObjCContainerObjectCallback

Callback structures for container memory management and comparison operations.

## Key-Value Callbacks

### Object Combinations
- `_MulleObjCContainerRetainKeyRetainValueCallback` - Retain both
- `_MulleObjCContainerCopyKeyRetainValueCallback` - Copy key, retain value
- `_MulleObjCContainerRetainKeyCopyValueCallback` - Retain key, copy value
- `_MulleObjCContainerCopyKeyCopyValueCallback` - Copy both

### String Combinations
- `_MulleObjCContainerCopyCStringKeyRetainValueCallback` - Copy string key, retain value
- `_MulleObjCContainerAssignCStringKeyCallback` - Assign string key
- `_MulleObjCContainerFreeCStringKeyCallback` - Free string key on removal
- `_MulleObjCContainerCopyCStringKeyCallback` - Copy string key on insert

### Special Combinations
- `_MulleObjCContainerIntegerKeyRetainValueCallback` - Integer key, retain value
- `_MulleObjCContainerPointerKeyIntegerValueCallback` - Pointer key, integer value
- `_MulleObjCContainerIntegerKeyPointerValueCallback` - Integer key, pointer value

## Callback Behaviors

| Operation | Retain | Copy | Assign | AssignRetained |
|-----------|--------|------|--------|----------------|
| On Insert | -retain | -copy | nop | nop |
| On Remove | -autorelease | -autorelease | nop | -autorelease |
| Compare | -isEqual | -isEqual | -isEqual | -isEqual |

Note: All callbacks are const to allow placement in write-protected storage.
