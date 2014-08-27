//
//  main.m
//  Exercise 11.5
//
//  Created by Michał Listowski on 27.06.2014.
//

#import <Foundation/Foundation.h>
#import "Square.h"


int main(int argc, const char * argv[])
{
    @autoreleasepool {
        Square *mySquare = [[Square alloc] initWithSide:5];
        
        NSLog(@"S = %i", mySquare.side);
        NSLog(@"Area = %i", [mySquare area]);
        NSLog(@"Perimetr = %i", [mySquare perimetr]);
    }
    return 0;
}
