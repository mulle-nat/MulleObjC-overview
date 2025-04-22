# MulleObjCClassCluster

Protocol for implementing class clusters in mulle-objc. A class cluster is an abstract factory pattern that returns concrete subclasses while hiding the implementation details.

## Required Methods

- [`+__classClusterClass`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+__classClusterClass+of+MulleObjCClassCluster+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/MulleObjCClassCluster.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/MulleObjCClassCluster.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Returns the actual concrete class to instantiate

## Optional Methods

- [`+initialize`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+initialize+of+MulleObjCClassCluster+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/MulleObjCClassCluster.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/MulleObjCClassCluster.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Must call `[super initialize]` or `MulleObjCClassMarkAsClassCluster()` if overridden

## Helper Functions

- [`MulleObjCClassMarkAsClassCluster`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCClassMarkAsClassCluster+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/MulleObjCClassCluster.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/MulleObjCClassCluster.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Mark class as cluster
- [`MulleObjCClassIsClassCluster`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCClassIsClassCluster+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/MulleObjCClassCluster.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/protocol/MulleObjCClassCluster.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Check if class is cluster

## Usage

Use this protocol to implement class clusters:
- Your abstract base class adopts `MulleObjCClassCluster` and will alloc placeholder
- Your concrete subclasses inherit from your base class and will use NSAllocateObject

Note: The class cluster pattern is used to provide a simpler public interface while allowing multiple specialized implementations internally.
