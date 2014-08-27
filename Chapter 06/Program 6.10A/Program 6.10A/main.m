//
//  main.m
//  Program 6.10A
//
//  Created by Michał Listowski on 05.06.2014.
//

#import <Foundation/Foundation.h>

//---- Program Section ----

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        int p, d;
        BOOL isPrime;
        for (p = 2; p <= 50; ++p) {
            isPrime = YES;
            for (d = 2; d < p; ++d) {
                if (p % d == 0) {
                    isPrime = NO;
                }
            }
            if (isPrime == YES) {
                NSLog(@"%i ", p);
            }
        }
    }
    return 0;
}

