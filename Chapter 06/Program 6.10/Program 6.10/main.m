//
//  main.m
//  Program 6.10
//
//  Created by Michał Listowski on 05.06.2014.
//

#import <Foundation/Foundation.h>

//---- Program Section ----

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        int p, d, isPrime;
        for (p = 2; p <= 50; ++p) {
            isPrime = 1;
            for (d = 2; d < p; ++d) {
                if (p % d == 0) {
                    isPrime = 0;
                }
            }
            if (isPrime != 0) {
                NSLog(@"%i ", p);
            }
        }
    }
    return 0;
}

