//
//  main.m
//  Exercise 4.05
//
//  Created by Michał Listowski on 02.06.2014.
//

#import <Foundation/Foundation.h>

//---- Program Section ----

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        double polynomial = (3.31 * pow(10, -8) + 2.01 * pow(10, -7))/(7.16 * pow(10, -6) + 2.01 * pow(10, -8));
        NSLog(@"Value of polynomial %.4e", polynomial);
    }
    return 0;
}

