#include <stdio.h>
#include "structure.h"
#include <stdlib.h>

int main() {
    struct s structure;      // struct {type} {name}
    structure.a = 100;              // Use . for variables
    struct s *s_ptr  = malloc(sizeof(struct s)); 
    printf("Size of struct s: %zu\n", sizeof(structure));
    printf("Size of a in struct s: %zu\n", sizeof(structure.a));
    printf("Address from malloc(): %p\n", s_ptr);
    struct s *t_ptr = malloc(sizeof(struct s));
    t_ptr -> next = s_ptr;
    printf("Address of *next from 2nd struct*: %p\n", t_ptr->next);
    printf("Address of *next from 1st struct before assignment: %p\n", s_ptr->next);
    s_ptr->next = t_ptr;
    printf("After assignment: %p\n", s_ptr->next);
    return 0;
}
