//
//  main.m
//  Progam 8.3
//
//  Created by Michał Listowski on 10.06.2014.
//

// Simple example to illustrate inheritance

#import "Square.h"


int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        Square *mySquare = [[Square alloc] init];
        
        [mySquare setSide:5];
        
        NSLog(@"Square s = %i", [mySquare side]);
        NSLog(@"Area = %i, Perimeter = %i", [mySquare area], [mySquare perimetr]);
    }
    return 0;
}

