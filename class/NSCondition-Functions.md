# NSCondition Functions

Core functions for condition variable synchronization in mulle-objc.

## Condition Management

### Instance Operations
```c
// Initialize/destroy condition
int pthread_cond_init(pthread_cond_t *cond, const pthread_condattr_t *attr);
int pthread_cond_destroy(pthread_cond_t *cond);

// Wait/signal operations
int pthread_cond_wait(pthread_cond_t *cond, pthread_mutex_t *mutex);
int pthread_cond_signal(pthread_cond_t *cond);
int pthread_cond_broadcast(pthread_cond_t *cond);
```

## Important Notes

1. Usage
   - Always hold mutex when waiting
   - Check conditions in loop
   - Handle spurious wakeups
   - Signal after state change

2. Thread Safety
   - Operations are thread-safe
   - Mutex protects condition
   - Handle multiple waiters
   - Consider broadcast needs

3. Best Practices
   - Document condition protocol
   - Keep mutex scope small
   - Handle timeouts
   - Check return values

4. Performance
   - Minimize wait time
   - Use appropriate signaling
   - Consider contention
   - Cache condition state