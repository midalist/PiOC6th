//
//  main.m
//  Exercise 13.08
//
//  Created by Michał Listowski on 15.07.2014.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
  @autoreleasepool {
    for (int i = 0; i < argc; ++i) {
      NSLog(@"%s", argv[i]);
    }
  }
  return 0;
}
