//
//  main.m
//  Program 8.2
//
//  Created by Michał Listowski on 09.06.2014.
//

// Simple example to illustrate inheritance

#import "Rectangle.h"


int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        Rectangle *myRect = [[Rectangle alloc] init];
        
        [myRect setWidth:5 andHeight:8];
        
        NSLog(@"Rectangle: w = %i, h = %i", myRect.width, myRect.height);
        NSLog(@"Area = %i, Perimeter = %i", [myRect area], [myRect perimetr]);
    }
    return 0;
}

