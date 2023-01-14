#include <stdio.h>

extern double adaFunc(double,double,double);

void my_func(void)
{
  double a = adaFunc(0.04,0.02,0.01);

  printf("Result is %f\n",a);
}
