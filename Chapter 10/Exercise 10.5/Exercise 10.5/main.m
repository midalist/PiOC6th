//
//  main.m
//  Exercise 10.5
//
//  Created by Michał Listowski on 24.06.2014.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        typedef Fraction* FractionObj;
        
        FractionObj f1 = [[Fraction alloc]init];
        
        [f1 setTo:3 over:9];
        [f1 reduce];
        
        NSLog(@"Fraction = %i/%i", f1.numerator , [f1 denominator]);
        
    }
    return 0;
}
