//
//  main.m
//  Exercise 4.04
//
//  Created by Michał Listowski on 02.06.2014.
//

#import <Foundation/Foundation.h>

//---- Program Section ----

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        double x = 2.55;
        double polynomial = 3 * pow(x, 3) - 5 * pow(x, 2) + 6;
        NSLog(@"Value of polynomial %f", polynomial);
    }
    return 0;
}

