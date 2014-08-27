//
//  main.m
//  Exercise 8.4
//
//  Created by Michał Listowski on 11.06.2014.
//

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
        
        NSLog(@"Origin at (%g,%g)", myRect.origin.x, myRect.origin.y);
        
        [myPoint setX:50 andY:50];
        [myRect translate:myPoint];
        
        NSLog(@"Origin at (%g,%g)", myRect.origin.x, myRect.origin.y);
    }
    return 0;
}

