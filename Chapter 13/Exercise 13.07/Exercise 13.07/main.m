//
//  main.m
//  Exercise 13.07
//
//  Created by Michał Listowski on 14.07.2014.
//

#import <Foundation/Foundation.h>


int main(int argc, const char * argv[])
{
  @autoreleasepool {
    char *message = "Programming in Objective-C is fun";
    char message2[] = "You said it";
    
    /*** Set 1 ***/
    NSLog(@"Programming in Objective-C is fun");
    NSLog(@"%s", "Programming in Objective-C is fun");
    NSLog(@"%s", message);
    
    /*** Set 2 ***/
    NSLog(@"You said it");
    NSLog(@"%s", message2);
    NSLog(@"%s", &message2[0]);
    
    /*** Set 3 ***/
    NSLog(@"said it");
    NSLog(@"%s", message2 + 4);
    NSLog(@"%s", &message2[4]);
    
  }
  return 0;
}
