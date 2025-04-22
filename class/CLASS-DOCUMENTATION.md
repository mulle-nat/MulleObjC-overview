# MulleObjC Class Documentation

## Core Classes

-   [NSObject](NSObject.md) - Root class of the runtime system, providing
    fundamental object behavior
-   [NSProxy](NSProxy.md) - Root class for proxy objects, enabling message
    interception and forwarding
-   [MulleObject](MulleObject.md) - Base class with automatic thread-safe
    method locking
-   [MulleProxy](MulleProxy.md) - Thread-safe proxy implementation with
    recursive locking support

## Memory Management

-   [NSAutoreleasePool](NSAutoreleasePool.md) - Automatic object
    deallocation through thread-local pools
-   [MulleObjCAutoreleasePool](MulleObjCAutoreleasePool.md) - Core
    autorelease functionality with runtime integration
-   [NSZone](NSZone.md) - Legacy memory allocation compatibility layer

## Threading and Synchronization

-   [NSThread](NSThread.md) - Thread management with 1:1 thread mapping
-   [NSLock](NSLock.md) - Basic mutex functionality for thread
    synchronization
-   [NSRecursiveLock](NSRecursiveLock.md) - Mutex that can be locked
    multiple times by the same thread
-   [NSCondition](NSCondition.md) - POSIX condition variable wrapper for
    thread coordination
-   [NSConditionLock](NSConditionLock.md) - State-based thread
    synchronization with condition support

## Runtime Support

-   [NSMethodSignature](NSMethodSignature.md) - Method type information and
    frame layout management
-   [NSInvocation](NSInvocation.md) - Dynamic method invocation and argument
    handling
-   [MulleDynamicObject](MulleDynamicObject.md) - Base class for objects
    with dynamic property support
-   [NSNull](NSNull.md) - Singleton representing null values in collections
-   [MulleObjCLoader](MulleObjCLoader.md) - Framework initialization and
    dependency management

## Coding Support

-   [NSObject+NSCodingSupport](NSObject+NSCodingSupport.md) - Object
    archiving and serialization support

*All documentation uses traditional method calls rather than dot notation,
following mulle-objc conventions.*
