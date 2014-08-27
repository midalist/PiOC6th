//
//  main.m
//  Program 8.4
//
//  Created by Michał Listowski on 10.06.2014.
//

// Simple example to illustrate inheritance

#import "Square.h"
#import "XYPoint.h"


int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        Rectangle *myRect = [[Rectangle alloc] init];
        XYPoint *myPoint = [[XYPoint alloc] init];
        
        [myPoint setX:100 andY:200];
        [myRect setWidth:5 andHeight:8];
        myRect.origin = myPoint;
        
        NSLog(@"Rectangle w = %i, h = %i", myRect.width, myRect.height);
        
        NSLog(@"Origin at (%i,%i)", myRect.origin.x, myRect.origin.y);
        
        NSLog(@"Area = %i, Perimeter = %i", [myRect area], [myRect perimetr]);
    }
    return 0;
}

