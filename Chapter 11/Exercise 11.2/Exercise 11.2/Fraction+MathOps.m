//
//  Fraction+MathOps.m
//  Exercise 11.2
//
//  Created by Michał Listowski on 27.06.2014.
//

#import "Fraction+MathOps.h"

@implementation Fraction (MathOps)

-(BOOL) isEqualTo:(Fraction *)f{
    [self reduce];
    [f reduce];
    if ((self.numerator == f.numerator) && (self.denominator == f.denominator)) {
        return (BOOL)1;
    } else
        return (BOOL)0;
}
-(int) compare:(Fraction *)f{
    [self reduce];
    [f reduce];
    double test = (self.numerator / (double)f.denominator) - (f.numerator / (double)f.denominator );
    if ((self.numerator == f.numerator) && (self.denominator == f.denominator))
        test = 0;
    else if (test > 0)
        test = 1;
    else if (test < 0)
        test = -1;
    return (int) test;
}
-(Fraction *) invert:(Fraction *)f{
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = f.denominator;
    result.denominator = f.numerator;
    
    [result reduce];
    return result;
}
-(Fraction *) sub:(Fraction *)f{
    //  To sub two fractions:
    //  a/b - c/d = ((a*d)-(b*c)/(b*d))
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = self.numerator * f.denominator - self.denominator * f.numerator;
    result.denominator = self.denominator * f.denominator;
    
    [result reduce];
    return result;
}
-(Fraction *) mul:(Fraction *)f{
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = self.numerator * f.numerator;
    result.denominator = self.denominator * f.denominator;
    
    [result reduce];
    return result;
}
-(Fraction *) div:(Fraction *)f{
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = self.numerator * f.denominator;
    result.denominator = self.denominator * f.numerator;
    
    [result reduce];
    return result;
}

@end
