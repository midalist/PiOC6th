//
//  main.m
//  Exercise 8.5
//
//  Created by Michał Listowski on 11.06.2014.
//

#import "Square.h"
#import "XYPoint.h"
#import "Circle.h"
#import "Triangle.h"


int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        Rectangle *myRect = [[Rectangle alloc] init];
        XYPoint *myPoint = [[XYPoint alloc] init];
        Circle *myCircle = [[Circle alloc] init];
        Triangle *myTriangle = [[Triangle alloc] init];
        
        myCircle.radius = 5;
        [myTriangle setAVal:5 BVal:5 CVal:5];
        
        [myPoint setX:100 andY:200];
        [myRect setWidth:5 andHeight:8];
        myRect.origin = myPoint;
        
        NSLog(@"Origin at (%g,%g)", myRect.origin.x, myRect.origin.y);
        
        [myPoint setX:50 andY:50];
        [myRect translate:myPoint];
        
        NSLog(@"Origin at (%g,%g)", myRect.origin.x, myRect.origin.y);
        
        NSLog(@"Circle circumference = %g and area = %g", [myCircle circumference], [myCircle area]);
        NSLog(@"Triangle perimeter = %g and area = %g", myTriangle.perimeter, myTriangle.area); // using dot notation for function show no warning in XCode 5
    }
    return 0;
}

