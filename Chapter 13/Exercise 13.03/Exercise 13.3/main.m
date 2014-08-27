//
//  main.m
//  Exercise 13.3
//
//  Created by Michał Listowski on 07.07.2014.
//

#define MAXPRIME 150

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
  @autoreleasepool {
    int n = MAXPRIME;
    int p[MAXPRIME] = {0};
    
    for (int i = 2; i < n; ++i) {
      for (int k = 2; k < i; ++k) {
        if (i % k == 0) {
          p[i] = 1;
          break;
        }
      }
    }
    for (int i = 2; i < n; ++i) {
      if (p[i] == 0) {
        NSLog(@"%i",i);
      }
    }
  }
  return 0;
}
