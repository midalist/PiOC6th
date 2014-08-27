//
//  main.m
//  Program 19.08
//
//  Created by Michał Listowski on 25.08.2014.
//

#import <Foundation/Foundation.h>
#import "Foo.h"

int main(int argc, const char * argv[]) {
  
  @autoreleasepool {
    Foo *myFoo1 = [[Foo alloc] init];
    Foo *myFoo2;
    
    myFoo1.strVal = @"This is the string";
    myFoo1.intVal = 12345;
    myFoo1.floatVal = 98.6;
    
    [NSKeyedArchiver archiveRootObject:myFoo1 toFile:@"foo.arch"];
    myFoo2 = [NSKeyedUnarchiver unarchiveObjectWithFile:@"foo.arch"];
    
    NSLog(@"%@\n%i\n%g", myFoo2.strVal, myFoo2.intVal, myFoo2.floatVal);
  }
  return 0;
}
