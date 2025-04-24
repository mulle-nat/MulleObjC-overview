# MulleObjC Overview Documentation

This document provides an overview of the core classes, functions, protocols, and structures in the MulleObjC runtime.

## MulleObjC Class Documentation

### Core Classes

-   [NSObject](class/NSObject.md) - Root class of the runtime system, providing
    fundamental object behavior
-   [NSProxy](class/NSProxy.md) - Root class for proxy objects, enabling message
    interception and forwarding
-   [MulleObject](class/MulleObject.md) - Base class with automatic thread-safe
    method locking
-   [MulleProxy](class/MulleProxy.md) - Thread-safe proxy implementation with
    recursive locking support

### Memory Management

-   [NSAutoreleasePool](class/NSAutoreleasePool.md) - Automatic object
    deallocation through thread-local pools
-   [MulleObjCAutoreleasePool](class/MulleObjCAutoreleasePool.md) - Core
    autorelease functionality with runtime integration
-   [NSZone](class/NSZone.md) - Legacy memory allocation compatibility layer

### Threading and Synchronization

-   [NSThread](class/NSThread.md) - Thread management with 1:1 thread mapping
-   [NSLock](class/NSLock.md) - Basic mutex functionality for thread
    synchronization
-   [NSRecursiveLock](class/NSRecursiveLock.md) - Mutex that can be locked
    multiple times by the same thread
-   [NSCondition](class/NSCondition.md) - POSIX condition variable wrapper for
    thread coordination
-   [NSConditionLock](class/NSConditionLock.md) - State-based thread
    synchronization with condition support

### Runtime Support

-   [NSMethodSignature](class/NSMethodSignature.md) - Method type information and
    frame layout management
-   [NSInvocation](class/NSInvocation.md) - Dynamic method invocation and argument
    handling
-   [MulleDynamicObject](class/MulleDynamicObject.md) - Base class for objects
    with dynamic property support
-   [NSNull](class/NSNull.md) - Singleton representing null values in collections
-   [MulleObjCLoader](class/MulleObjCLoader.md) - Framework initialization and
    dependency management

### Coding Support

-   [NSObject+NSCodingSupport](class/NSObject+NSCodingSupport.md) - Object
    archiving and serialization support


## MulleObjC Protocol Documentation

## Foundation Protocols

-   [NSObjectProtocol](protocol/NSObjectProtocol.md) - Core object behavior protocol
-   [NSCoding](protocol/NSCoding.md) - Object serialization and archiving
-   [NSCopying](protocol/NSCopying.md) - Object copying support
-   [NSCopyingWithAllocator](protocol/NSCopyingWithAllocator.md) - Extended copying
    with allocator
-   [NSFastEnumeration](protocol/NSFastEnumeration.md) - Fast iteration over
    collections
-   [NSLocking](protocol/NSLocking.md) - Basic locking for thread synchronization
-   [NSContainer](protocol/NSContainer.md) - Container object behavior

## Mulle-specific Protocols

-   [MulleObjCClassCluster](protocol/MulleObjCClassCluster.md) - Class cluster
    implementation support
-   [MulleObjCException](protocol/MulleObjCException.md) - Exception handling
    protocol
-   [MulleObjCRootObject](protocol/MulleObjCRootObject.md) - Root object requirements
-   [MulleObjCRuntimeObject](protocol/MulleObjCRuntimeObject.md) - Runtime object
    support
-   [MulleObjCSingleton](protocol/MulleObjCSingleton.md) - Singleton pattern
    implementation
-   [MulleObjCTaggedPointer](protocol/MulleObjCTaggedPointer.md) - Tagged pointer
    optimization


## MulleObjC Functions

This document outlines the core functions available in MulleObjC for object
manipulation, method invocation, and runtime operations.

### Core Functions

-   [MulleObjCAllocation](function/MulleObjCAllocation.md) - Object allocation and
    deallocation functions
-   [MulleObjCDebug](function/MulleObjCDebug.md) - Debugging support functions
-   [MulleObjCExceptionHandler](function/MulleObjCExceptionHandler.md) - Exception
    handling functions
-   [MulleObjCHashFunctions](function/MulleObjCHashFunctions.md) - Hash calculation
    utilities
-   [MulleObjCIvar](function/MulleObjCIvar.md) - Instance variable manipulation
-   [MulleObjCPrinting](function/MulleObjCPrinting.md) - Object printing utilities
-   [MulleObjCProperty](function/MulleObjCProperty.md) - Property access and
    manipulation
-   [MulleObjCStackFrame](function/MulleObjCStackFrame.md) - Stack frame utilities
-   [NSByteOrder](function/NSByteOrder.md) - Byte order conversion functions
-   [NSDebug](function/NSDebug.md) - Debugging utilities
-   [mulle-sprintf-object](function/mulle-sprintf-object.md) - Object formatting
    functions


## MulleObjC Struct Documentation

Core data structures used throughout MulleObjC.

## Core Structures

-   [NSRange](struct/NSRange.md) - Location and length pair for representing ranges in collections and strings.
-   [NSZone](struct/NSZone.md) - Legacy compatibility structure for memory zones.
-   [MulleObjCContainerCallback](struct/MulleObjCContainerCallback.md) - Basic container operations callback structure.
-   [MulleObjCContainerObjectCallback](struct/MulleObjCContainerObjectCallback.md) - Object lifecycle management in containers callback structure.

See individual documentation files for detailed information.