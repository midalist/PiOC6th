//
//  main.m
//  Exercise 18.2
//
//  Created by Michał Listowski on 25.08.2014.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"
#import "XYPoint.h"

int main(int argc, const char * argv[]) {
  
  @autoreleasepool {
    Rectangle *myRect = [[Rectangle alloc] init];
    Rectangle *myRect2;
    XYPoint *myPoint = [[XYPoint alloc] init];
    
    [myPoint setX:5 andY:5];
    [myRect setWidth:5 andHeight:4];
    
    NSLog(@"1th : %i", [myRect area]);
    [myRect setOrigin:[myPoint copy]];
    [[myRect origin] print];
    
    myRect2 = [myRect copy];
    NSLog(@"2st : %i", [myRect2 area]);
    [[myRect2 origin] print];
    
    NSLog(@"Change in origin");
    
    NSLog(@"1th : %i", [myRect area]);
    [myPoint setX:0 andY:0];
    [myRect setOrigin:[myPoint copy]];
    [myPoint setX:2 andY:2];
    [[myRect origin] print];
    
    NSLog(@"2st : %i", [myRect2 area]);
    [[myRect2 origin] print];
    
    
  }
  return 0;
}
