#include <stdio.h>

int main(int argc, char const *argv[])
{
  int output[10];
  for (int i = 0; i < 10; i++)
  {
    output[i] = 1 << i;
  }

  // === DEBUGGING ===
  printf("Output\n");
  for (int i = 0; i < 10; i++)
  {
    printf("Element[%d] = %d\n", i, output[i]);
  }
  // === DEBUGGING ===

  return 0;
}
