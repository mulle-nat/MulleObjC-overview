# MulleObjCClassCluster

Protocol for implementing class clusters in mulle-objc. A class cluster is an abstract factory pattern that returns concrete subclasses while hiding the implementation details.

## Required Methods

- `+__classClusterClass` - Returns the actual concrete class to instantiate

## Optional Methods

- `+initialize` - Must call `[super initialize]` or `MulleObjCClassMarkAsClassCluster()` if overridden

## Usage

Use this protocol to implement class clusters:
- Your abstract base class adopts `MulleObjCClassCluster` and will alloc placeholder
- Your concrete subclasses inherit from your base class and will use NSAllocateObject

Note: The class cluster pattern is used to provide a simpler public interface while allowing multiple specialized implementations internally.
