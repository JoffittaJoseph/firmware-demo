#include <stdint.h>

int main(void) {
    // Simulate toggling an LED
    volatile uint32_t counter = 0;
    while (1) {
        counter++;
    }
    return 0;
}
