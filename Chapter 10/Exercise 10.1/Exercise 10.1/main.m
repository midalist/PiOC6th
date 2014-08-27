//
//  main.m
//  Exercise 10.1
//
//  Created by Michał Listowski on 23.06.2014.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        Rectangle *myRect = [[Rectangle alloc] initWithWidth:10 andHeight:20];
        
        NSLog(@"Width = %g, Height = %i", (double)myRect.width, [myRect height]);
        
    }
    return 0;
}
