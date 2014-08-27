//
//  main.m
//  Program 8.5
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
        
        NSLog(@"Origin at (%i,%i)", myRect.origin.x, myRect.origin.y);
        
        [myPoint setX:50 andY:50];
        
        NSLog(@"Origin at (%i,%i)", myRect.origin.x, myRect.origin.y);
    }
    return 0;
}

