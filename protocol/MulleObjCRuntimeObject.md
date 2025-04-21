# MulleObjCRuntimeObject

The `MulleObjCRuntimeObject` protocol defines core runtime behavior for objects in the MulleObjC system, particularly focusing on thread affinity and ownership (TAO) strategies.

## Thread Affinity and Ownership (TAO) Strategies

The protocol defines several strategies for managing object ownership and thread safety:

### All-Purpose Thread Strategies

1. **MulleObjCTAOKnownThreadSafe**
   - Most efficient strategy
   - For fully thread-safe objects
   - No thread affinity (accessible from any thread)
   - Used with `MulleObjCThreadSafe` protocol
   - Recommended for MulleObject-derived classes

2. **MulleObjCTAOCallerRemovesFromCurrentPool**
   - For objects created for passing to another thread
   - Caller removes object from current thread's autorelease pool
   - Fallback for objects without thread safety concerns
   - Not recommended as a design feature

3. **MulleObjCTAOCallerRemovesFromAllPools**
   - Aggressive cleanup approach
   - Removes object from all autorelease pools across threads
   - Use only in special circumstances
   - Potentially slow and dangerous
   - Not recommended for general use

### Custom Thread Strategies

4. **MulleObjCTAOKnownThreadSafeMethods**
   - For objects with thread-safe methods only
   - Limited to specific NSThread access
   - No thread affinity changes
   - Bypasses normal thread checking
   - More efficient for partially thread-safe objects

5. **MulleObjCTAOReceiverPerformsFinalize**
   - For specialized manual object management
   - Changes thread affinity on access
   - Object handles own finalization
   - Reserved for special cases

## Operational Flow

### Source Thread (mulleRelinquishAccess)
1. Retains object to prevent deallocation during transfer
2. Optionally removes from autorelease pools (strategy-dependent)
3. Unsets thread affinity marker

### Receiving Thread (mulleGainAccess)
1. Sets thread affinity to current thread (unless thread-safe)
2. Autoreleases object in receiving thread's pool

## Implementation Guidelines

1. Use `MulleObjCTAOKnownThreadSafe` as the default strategy
2. Implement `MulleObjCThreadSafe` protocol for thread-safe objects
3. Be cautious with custom thread strategies
4. Consider memory management implications
5. Test thoroughly across thread boundaries

## Best Practices

1. Prefer thread-safe objects when possible
2. Use custom thread strategies only when necessary
3. Document thread safety requirements
4. Consider performance implications
5. Handle autorelease pools appropriately
6. Test thread boundary transitions
