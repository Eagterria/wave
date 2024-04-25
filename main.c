#include <assert.h>
#include <stdlib.h>

int test(void) {
  return EXIT_SUCCESS;
}

int main(int argc, char *argv[]) {
#ifdef NDEBUG
  return EXIT_SUCCESS;
#else
  return test();
#endif
}
