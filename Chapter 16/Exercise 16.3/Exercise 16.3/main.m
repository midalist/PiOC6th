//
//  main.m
//  Exercise 16.3
//
//  Created by Michał Listowski on 22.08.2014.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
  
  @autoreleasepool {
    NSProcessInfo *proc = [NSProcessInfo processInfo];
    NSArray *argc = [proc arguments];
    
    if([argc count] == 2)
      NSLog(@"%@", [[argc objectAtIndex:1] stringByDeletingLastPathComponent]);
    
  }
  return 0;
}
