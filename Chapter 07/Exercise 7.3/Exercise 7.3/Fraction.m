//
//  Fraction.m
//  Exercise 7.3
//
//  Created by Michał Listowski on 08.06.2014.
//

#import "Fraction.h"

@implementation Fraction

@synthesize numerator, denominator;

-(void) printWithReduce: (BOOL) reduce{
    if (reduce) {
        [self reduce];
        NSLog(@"%i/%i", numerator, denominator);
    }else
        NSLog(@"%i/%i", numerator, denominator);
}
-(double) convertToNum{
    if (denominator != 0)
        return (double)numerator / denominator;
    else
        return NAN;
}
-(void) setTo: (int) n over: (int) d{
    numerator = n;
    denominator = d;
}

// Add a Fraction to the reciver

-(Fraction *) add: (Fraction *) f{
    // To add two fractions :
    // a/b + c/d  = ((a*d)+(b*c))/(b*d)
    
    // Result will store the result of the addition
    
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = numerator * f.denominator + denominator * f.numerator;
    result.denominator = denominator * f.denominator;
    
    return result;
}
-(Fraction *) subtract: (Fraction *) f{
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = numerator * f.denominator - denominator * f.numerator;
    result.denominator = denominator * f.denominator;
    
    return result;
}
-(Fraction *) multiply: (Fraction *) f{
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = numerator * f.numerator;
    result.denominator = denominator * f.denominator;
    
    return result;
}
-(Fraction *) divide: (Fraction *) f{
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = numerator * f.denominator;
    result.denominator = denominator * f.numerator;
    
    return result;
}
-(void) reduce{
    int u = numerator;
    int v = denominator;
    int temp;
    
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    
    numerator /= u;
    denominator /= u;
}

@end
