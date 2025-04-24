# MulleObjCException

Protocol for exception handling in mulle-objc. Defines the minimal interface that exception objects must implement.

## Optional Methods

- [`-raise`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+raise+of+MulleObjCException+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCException.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCException.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Raises the exception (default implementation provided by MulleObjCException class)
- [`-UTF8String`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+method+UTF8String+of+MulleObjCException+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCException.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCException.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Returns a string representation of the exception

## Helper Functions

- [`MulleObjCThrow`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCThrow+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCException.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCException.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Throw an exception
- [`MulleObjCRaise`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+MulleObjCRaise+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCException.m+and+the+header+at+https://raw.githubusercontent.com/mulle-objc/MulleObjC/refs/heads/master/src/protocol/MulleObjCException.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Raise an exception

Note: This is a minimal protocol that provides basic exception functionality. The actual NSException class in Foundation provides additional features like name, reason and userInfo.
