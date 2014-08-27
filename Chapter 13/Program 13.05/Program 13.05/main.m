//
//  main.m
//  Program 13.05
//
//  Created by Michał Listowski on 29.06.2014.
//
//  This function finds the greatest common divisor of two
//  nonnegative integer values and returns the result

#import <Foundation/Foundation.h>

int gcd(int u, int v){
    int temp;
    
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    return u;
}

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        int result;
        
        result = gcd(150, 35);
        NSLog(@"The gcd of 150 and 35 is %i", result);
        
        result = gcd(1026, 405);
        NSLog(@"The gcd of 1026 and 405 is %i", result);
        
        NSLog(@"The gcd of 83 and 240 is %i", gcd(83, 240));
        
    }
    return 0;
}
