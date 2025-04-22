# MulleObjCClassCluster

Protocol for implementing class clusters. A class cluster is an abstract factory that returns concrete subclasses based on initialization parameters.

## Required Methods

- `+__classClusterClass__` - Returns the actual class to instantiate
- `+__classClusterObject__` - Returns a new instance of the appropriate concrete class

## Optional Methods

- `+__classClusterGenericObject__` - Returns a generic instance (used by copy)

Note: The class cluster pattern is used extensively in Foundation for collections and strings.
