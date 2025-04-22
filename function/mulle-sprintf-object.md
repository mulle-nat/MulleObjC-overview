# mulle-sprintf-object Functions

Functions for object string formatting in mulle-objc.

## Formatting Functions

### Object Formatting
```c
// Format object description
void mulle_sprintf_object_do_format_object(struct mulle_buffer *buffer,
                                         struct mulle_sprintf_formatcontext *ctxt,
                                         struct mulle_sprintf_argumentarray *arguments,
                                         int argc,
                                         int width,
                                         int precision,
                                         int modifier,
                                         int conversion);
```

## Important Notes

1. Formatting
   - Handle all types
   - Format properly
   - Check buffer space
   - Handle errors

2. Thread Safety
   - Thread-safe output
   - Handle concurrent access
   - Buffer appropriately
   - Clean up properly

3. Best Practices
   - Check buffer size
   - Handle NULL values
   - Format consistently
   - Document formats

4. Performance
   - Buffer output
   - Minimize allocations
   - Cache when possible
   - Clean up buffers
