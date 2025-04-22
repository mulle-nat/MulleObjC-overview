# NSMethodSignature Functions

Functions for working with method signatures and type encoding in mulle-objc.

## Type Information

### Type Analysis
- [`mulle_objc_signature_supply_typeinfo`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+mulle_objc_signature_supply_typeinfo+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSMethodSignature.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSMethodSignature.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Get type info
- [`mulle_objc_signature_count_typeinfos`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+mulle_objc_signature_count_typeinfos+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSMethodSignature.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSMethodSignature.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Count type infos

## MetaABI Support

### Parameter Types
- [`mulle_objc_signature_get_metaabiparamtype`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+mulle_objc_signature_get_metaabiparamtype+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSMethodSignature.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSMethodSignature.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Get parameter type
- [`mulle_objc_signature_get_metaabireturntype`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+mulle_objc_signature_get_metaabireturntype+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSMethodSignature.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSMethodSignature.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Get return type

## Type Navigation

### Type Parsing
- [`_mulle_objc_signature_skip_type_qualifier`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+_mulle_objc_signature_skip_type_qualifier+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSMethodSignature.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSMethodSignature.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Skip qualifiers
- [`mulle_objc_signature_next_type`](https://www.perplexity.ai/search?q=Please+create+some+detailed+API+documentation+for+the+function+mulle_objc_signature_next_type+of+the+MulleObjC+project+https://github.com/mulle-objc/MulleObjC.+You+will+find+source+code+probably+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSMethodSignature.m+and+the+header+at+https://github.com/mulle-objc/MulleObjC/blob/master/src/class/NSMethodSignature.h+and+there+may+also+be+tests+for+it+in+the+test/+folder) - Get next type

## Important Notes

1. Type Handling
   - Parse types carefully
   - Handle qualifiers properly
   - Consider alignment
   - Support MetaABI

2. Memory Layout
   - Follow MetaABI rules
   - Handle variable sizes
   - Consider padding

3. Best Practices
   - Cache type info
   - Validate signatures
   - Handle all types
   - Check alignments

4. Performance
   - Cache parsed info
   - Minimize parsing
   - Use MetaABI
