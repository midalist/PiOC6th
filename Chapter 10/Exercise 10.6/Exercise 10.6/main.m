//
//  main.m
//  Exercise 10.6
//
//  Created by Michał Listowski on 24.06.2014.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        float f = 1.00;
        short int i = 100;
        long int l = 500L;
        double d = 15.00;
        
        NSLog(@"f + i = %f type float", f + i);
        NSLog(@"l / d = %g type double", l / d);
        NSLog(@"i / l + f = %f type float", i / l + f);
        NSLog(@"l * i = %ld type long", l * i);
        NSLog(@"f / 2 = %f type float", f / 2);
        NSLog(@"i / (d / f) = %g type double", i / (d / f));
        NSLog(@"l / (i * 2.0) = %g type double", l / (i * 2.0));
        NSLog(@"l + i / (double)l = %g type double", l + i / (double)l);
    }
    return 0;
}
