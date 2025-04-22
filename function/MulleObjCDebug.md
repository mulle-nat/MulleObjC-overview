# MulleObjCDebug

Functions for debugging and runtime inspection. Only available when compiled with MULLE_OBJC_DEBUG_SUPPORT.

## HTML Dump Functions

- `MulleObjCHTMLDumpUniverse()` - Dumps universe to current directory
- `MulleObjCHTMLDumpUniverseToDirectory(char *directory)` - Dumps universe to specified directory
- `MulleObjCHTMLDumpUniverseToTmp()` - Dumps universe to temp directory

## DOT Graph Functions

- `MulleObjCDotdumpUniverse()` - Creates DOT graph of universe
- `MulleObjCDotdumpUniverseToTmp()` - Creates DOT graph in temp directory
- `MulleObjCDotdumpUniverseFrameToTmp()` - Creates frame DOT graph in temp directory

## Class Inspection

- `MulleObjCDotdumpClass(char *classname)` - Creates DOT graph of class
- `MulleObjCDotdumpClassToDirectory(char *classname, char *directory)` - Creates class DOT graph in directory
- `MulleObjCDotdumpClassToTmp(char *classname)` - Creates class DOT graph in temp

## Hierarchy Visualization

- `MulleObjCDotdumpInfraHierarchy(char *classname)` - Creates infrastructure hierarchy DOT graph
- `MulleObjCDotdumpMetaHierarchy(char *classname)` - Creates metaclass hierarchy DOT graph

## Object Inspection

- `MulleObjCDumpObject(id obj)` - Prints object details to stderr

Note: All functions output error messages when MULLE_OBJC_DEBUG_SUPPORT is not defined.
