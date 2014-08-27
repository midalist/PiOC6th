//
//  main.m
//  Exercise 10.2
//
//  Created by Michał Listowski on 24.06.2014.
//

#import <Foundation/Foundation.h>
#import "Square.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        Rectangle *myRect = [[Rectangle alloc] initWithWidth:10 andHeight:20];
        Square *mySquare = [[Square alloc] initWithSide:10];
        
        NSLog(@"Width = %g, Height = %i", (double)myRect.width, [myRect height]);
        NSLog(@"Width = %i, Height = %i", mySquare.width, mySquare.height);
        
    }
    return 0;
}
