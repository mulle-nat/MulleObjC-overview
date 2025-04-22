# MulleObjCSingleton

Protocol for implementing singleton classes in mulle-objc. Singletons are expected to be created through `+sharedInstance` and not through `+alloc`.

## Optional Methods

- `+initialize` - Must call `[super initialize]` or `MulleObjCSingletonMarkClassAsSingleton()` if overridden
- `+sharedInstance` - Returns the singleton instance (implemented by MulleObjCSingleton)

## Helper Functions

- `MulleObjCSingletonCreate(Class self)` - Creates singleton instance for a class
- `MulleObjCSingletonMarkClassAsSingleton(Class self)` - Marks a class as singleton
- `MulleObjCInstanceIsSingleton(id obj)` - Checks if an instance is a singleton
- `MulleObjCSingletonSetEphemeral(BOOL flag)` - Sets ephemeral mode (must be called before +initialize)

## Important Notes

1. Singletons must be thread-safe, but the subclass has to ensure this (no automatic `<MulleObjcThreadSafe>`)
2. You cannot run `-mullePerformFinalize` on a singleton
3. Using `+alloc` will create another instance instead of returning the singleton
4. Use environment variable `MULLE_OBJC_EPHEMERAL_SINGLETON` to control ephemeral behavior externally
