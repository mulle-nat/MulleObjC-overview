# MulleObjCContainerObjectCallback

Container callbacks provide memory management and comparison functionality for container objects (like dictionaries and arrays). They define how objects are handled when inserted, removed, or compared within containers.

## Callback Types

### Key-Value Callbacks

* `_MulleObjCContainerCopyCStringKeyRetainValueCallback` - Copy string keys, retain values
* `_MulleObjCContainerRetainKeyRetainValueCallback` - Retain both keys and values
* `_MulleObjCContainerCopyKeyRetainValueCallback` - Copy keys, retain values
* `_MulleObjCContainerIntegerKeyRetainValueCallback` - Integer keys, retain values
* `_MulleObjCContainerAssignRetainedKeyAssignRetainedValueCallback` - Assign retained keys and values
* `_MulleObjCContainerRetainKeyCopyValueCallback` - Retain keys, copy values
* `_MulleObjCContainerCopyKeyCopyValueCallback` - Copy both keys and values

### Key Callbacks

* `_MulleObjCContainerAssignKeyCallback` - Simple assignment of keys
* `_MulleObjCContainerAssignRetainedKeyCallback` - Assign pre-retained keys
* `_MulleObjCContainerRetainPointerCompareKeyCallback` - Retain keys, compare by pointer

### String Key Callbacks

* `_MulleObjCContainerAssignCStringKeyCallback` - Assign C string keys
* `_MulleObjCContainerFreeCStringKeyCallback` - Free C string keys on removal
* `_MulleObjCContainerCopyCStringKeyCallback` - Copy C string keys on insert

### Value Callbacks

* `_MulleObjCContainerAssignValueCallback` - Simple assignment of values
* `_MulleObjCContainerFreeCStringValueCallback` - Free C string values on removal
* `_MulleObjCContainerCopyCStringValueCallback` - Copy C string values on insert

## Callback Behaviors

| Adverb | Key Type | On Insert | On Removal | Comparison |
|--------|----------|-----------|------------|------------|
| Assign | object | nop | nop | `-isEqual` |
| AssignRetained | object | nop | `-autorelease` | `-isEqual` |
| AssignCString | cstring | nop | nop | `strcmp` |
| CopyCString | cstring | `strdup` | `free` | `strcmp` |
| Copy | object | `-copy` | `-autorelease` | `-isEqual` |
| FreeCString | cstring | nop | `free` | `strcmp` |
| Integer | void * | nop | nop | `==` |
| Retain | object | `-retain` | `-autorelease` | `-isEqual` |
| RetainPointerCompare | object | `-retain` | `-autorelease` | `==` |

## Notes

- All callbacks are const to potentially reside in write-protected storage
- Used extensively by container classes like NSDictionary
- Provides consistent memory management across different container types
- Supports both object and C string key/value pairs
