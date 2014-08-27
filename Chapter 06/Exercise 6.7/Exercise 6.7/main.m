//
//  main.m
//  Exercise 6.7
//
//  Created by Michał Listowski on 06.06.2014.
//

#import <Foundation/Foundation.h>

//---- Program Section ----

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        int p, d, isPrime;
        for (p = 2; p <= 50;) {
            isPrime = 1;
            for (d = 2; d < p && isPrime == 1; ++d) {
                if (p % d == 0) {
                    isPrime = 0;
                }
            }
            if (isPrime != 0)
                NSLog(@"%i ", p);
            
            if (p > 2)
                p += 2;
            else
                p++;
        }
    }
    return 0;
}

