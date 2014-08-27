//
//  main.m
//  Exercise 12.7
//
//  Created by Michał Listowski on 28.06.2014.
//

#import <Foundation/Foundation.h>

#define ABSOLUTE_VALUE(x) ((x) < 0)? (-x) : (x)

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        int a = -5;
        NSLog(@"Absolute value of a = %i", ABSOLUTE_VALUE(a + 1));
    }
    return 0;
}
