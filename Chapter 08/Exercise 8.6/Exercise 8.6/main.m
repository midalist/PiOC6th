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
        
        [myPoint setX:100 andY:200];
        [myRect setWidth:100 andHeight:200];
        myRect.origin = myPoint;
        
        NSLog(@"Origin at (%g,%g)", myRect.origin.x, myRect.origin.y);
        NSLog(@"Width is %g and height is %g", myRect.width, myRect.height);
        [myPoint setX:100 andY:200];
        
        if ([myRect containsPoint:myPoint]) {
            NSLog(@"The point is inside rectangle");
        }else
            NSLog(@"The point is outside rectangle");
    }
    return 0;
}

