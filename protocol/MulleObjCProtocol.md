# MulleObjCProtocol

The MulleObjCProtocol system defines a hierarchy of thread safety and mutability guarantees for objects in mulle-objc. This system helps developers reason about thread safety and object behavior across their codebase.

## Protocol Hierarchy

| Protocol | Description | Thread Safety | State Changes | Return Values |
|----------|-------------|---------------|---------------|---------------|
| `MulleObjCThreadUnsafe` | Default level | Single thread only | Mutable | Any |
| `MulleObjCThreadSafe` | Thread-safe operations | Multiple threads | Mutable | Any |
| `MulleObjCImmutable` | Immutable after init | Multiple threads | Immutable | May return unsafe |
| `MulleObjCValue` | Fully thread-safe value | Multiple threads | Immutable | Only safe values |

## Protocol Adoption

### MulleObjCThreadSafe
```objc
@interface Foo <MulleObjCThreadSafe>
```
* Can be messaged from multiple threads
* May use internal locks or atomic operations
* Return values might not be thread-safe

### MulleObjCImmutable
```objc
@interface Foo <MulleObjCImmutable, MulleObjCThreadSafe>
```
* State doesn't change after initialization
* Thread-safe by nature (no locks needed)
* May return unsafe objects

### MulleObjCValue
```objc
@interface Foo <MulleObjCValue, MulleObjCImmutable, MulleObjCThreadSafe>
```
* Most robust level
* Only returns thread-safe values
* No unsafe pointers returned

## Optional Methods

### MulleObjCThreadSafe
* `mulleIsThreadSafe` - Returns thread safety status
* `mulleThreadSafeCopy` - Returns retained thread-safe copy

### MulleObjCThreadUnsafe
* `mulleIsThreadSafe` - Returns thread safety status

## Implementation Rules

1. **Protocol Removal**
   * Cannot remove protocols in subclasses
   * Once immutable/value, always immutable/value

2. **Thread Safety Changes**
   * Can switch between safe/unsafe in inheritance
   * Last marker in chain wins

3. **Testing Thread Safety**
   * Use `-mulleIsThreadSafe`
   * Don't use `-conformsToProtocol:`
   * Consider inheritance chain

## Example Inheritance

```objc
// Thread-safe base class
NSArray : NSObject <MulleObjCThreadSafe>

// Thread-unsafe subclass
NSMutableArray : NSArray <MulleObjCThreadUnsafe>
```

## Best Practices

1. Be explicit about thread safety
2. Consider marking unsafe classes for documentation
3. Use appropriate protocol for guarantees needed
4. Remember return value safety implications
5. Consider locking strategies carefully
6. Document thread safety requirements
