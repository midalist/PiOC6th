//
//  main.m
//  Exercise 13.09
//
//  Created by Michał Listowski on 16.07.2014.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
  @autoreleasepool {
    NSLog(@"This is a test");
    NSLog("This is a test");    //  NSLOG takes only objects
    
    NSLog(@"%s", "This is a test");
    NSLog(@"%s", @"This is a test");    //  //  %s in NSLOG is waiting for string not object
    
    NSLog("%s", "This is a test");  //  NSLOG takes only objects
    NSLog("%s", @"This is a test"); //  NSLOG takes only objects
    
    NSLog(@"%@", @"This is a test");
    NSLog(@"%@", "This is a test"); //  "This is a test" is no object
  }
  return 0;
}
