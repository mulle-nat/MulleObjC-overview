# MulleObjC Documentation

This document provides an overview of the MulleObjC framework's major components
and functions. MulleObjC is a standalone Objective-C runtime that implements the
essential foundation for Objective-C programs without relying on Apple's
Foundation framework.

## Core Functions

### [Function Documentation](function/FUNCTION-DOCUMENTATION.md)
The core functions form the backbone of MulleObjC's runtime system, providing
essential operations for method invocation, object property access, and runtime
support. These functions are optimized for performance and provide the
fundamental building blocks that higher-level abstractions are built upon.

### [Allocation Functions](function/MulleObjCAllocation.md)
Memory management in MulleObjC is handled through a sophisticated allocation
system that supports both traditional zone-based allocation and modern memory
management patterns. The allocation functions provide fine-grained control over
object lifecycle while maintaining compatibility with existing Objective-C code.

### [Hash Functions](function/MulleObjCHashFunctions.md)
MulleObjC implements a robust set of hashing functions optimized for various
data types, ensuring efficient dictionary operations and consistent hash values
across different platforms. These functions are crucial for implementing
collections and maintaining object identity.

## Class System

### [Object Functions](class/MulleObject-Functions.md)
The MulleObject class serves as the root class for the framework, providing
essential functionality for object lifecycle, method resolution, and runtime
operations. These functions implement the core object-oriented features of the
runtime.

### [Method and Invocation](class/NSMethodSignature-Functions.md)
Method invocation in MulleObjC is handled through a flexible system that
supports both static and dynamic method calls. The method signature and
invocation functions enable runtime introspection and dynamic dispatch while
maintaining type safety.

### [Dynamic Objects](class/MulleDynamicObject-Functions.md)
MulleObjC provides comprehensive support for dynamic object behavior through its
dynamic object system. These functions enable runtime method resolution, dynamic
property handling, and flexible message forwarding for advanced use cases.

## Threading and Synchronization

### [Thread Functions](class/NSThread-Functions.md)
The threading system in MulleObjC provides a platform-independent abstraction
for concurrent programming. Thread functions handle thread creation,
synchronization, and thread-local storage while ensuring proper resource
management.

### [Lock Functions](class/NSLock-Functions.md)
Synchronization primitives in MulleObjC range from simple locks to complex
condition variables. The locking functions implement various synchronization
patterns while avoiding common pitfalls like priority inversion.

## Memory Management

### [Autorelease Functions](class/NSAutoreleasePool-Functions.md)
MulleObjC implements automatic memory management through its autorelease pool
system. These functions provide deterministic cleanup of temporary objects while
maintaining compatibility with manual reference counting.

## Protocol Support

### [Container Callbacks](struct/MulleObjCContainerCallback.md)
The container callback system provides a flexible mechanism for implementing
collection classes. These functions enable custom memory management and
comparison behavior while maintaining type safety and performance.

### [Fast Enumeration](protocol/NSFastEnumeration-Functions.md)
Fast enumeration in MulleObjC provides efficient iteration over collections
while maintaining safety against concurrent modifications. The implementation
balances performance with proper mutation detection.

### [Runtime Objects](protocol/MulleObjCRuntimeObject-Functions.md)
Runtime object functions expose the internal workings of the Objective-C object
system. These low-level functions enable advanced runtime manipulation while
maintaining the integrity of the object system.

## Debugging and Development

### [Debug Functions](function/MulleObjCDebug.md)
Comprehensive debugging support is provided through various debug functions.
These tools help track object lifecycles, detect memory leaks, and provide
runtime introspection capabilities during development.

### [Exception Handling](function/MulleObjCExceptionHandler.md)
MulleObjC implements a robust exception handling system that supports both
synchronous and asynchronous exceptions. The exception functions provide
mechanisms for error recovery while maintaining stack integrity.

## Additional Features

### [Tagged Pointers](protocol/MulleObjCTaggedPointer-Functions.md)
The tagged pointer system optimizes small object storage by encoding values
directly in pointers. These functions provide a memory-efficient way to handle
small integers and other simple values without heap allocation.

### [Byte Order Operations](function/NSByteOrder.md)
Platform-independent byte order operations ensure correct data handling across
different architectures. These functions handle endianness conversion while
maintaining optimal performance on each platform.
