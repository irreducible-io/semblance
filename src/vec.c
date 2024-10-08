
#include "vec.h"
#include <stdlib.h>
#include <string.h>

const size_t VEC_INITIAL_CAPACITY = 8;

void vec_init(Vec *vec) {
    vec->len = 0;
    vec->cap = 0;
    vec->ptr = NULL;
}

void vec_init_with_capacity(Vec *vec, size_t width, size_t capacity) {
    void *ptr = malloc(width * capacity);
    vec->len = 0;
    vec->ptr = ptr;
    vec->cap = ptr == NULL ? 0 : capacity;
}

size_t vec_push_back(Vec *vec, size_t width, void *data) {
    size_t rem = vec->cap - vec->len;
    if (rem == 0) {
        size_t new_cap = vec->cap == 0 ? VEC_INITIAL_CAPACITY : vec->cap * 2;
        void *new_ptr = realloc(vec->ptr, new_cap * width);
        if (new_ptr == NULL) {
            return 0;
        }
        vec->ptr = new_ptr;
        vec->cap = new_cap;
    }
    memcpy(vec->ptr + (width * vec->len), data, width);
    return vec->len++;
}
