//
//  main.m
//  Exercise 8.5
//
//  Created by Michał Listowski on 11.06.2014.
//

#import "Rectangle.h"


int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        Rectangle *myRect = [[Rectangle alloc] init];
        [myRect setWidth:10 andHeight:3];
        [myRect draw];
    }
    return 0;
}

