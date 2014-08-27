//
//  main.m
//  Exercise 16.5
//
//  Created by Michał Listowski on 24.08.2014.
//

#import <Foundation/Foundation.h>

#import "NSString+TempFiles.h"

int main(int argc, const char * argv[])
{
  
  @autoreleasepool {
    NSLog(@"%@", [NSString temporaryFileName]);
  }
  return 0;
}
