//
//  Fraction.m
//  Exercise 9.2
//
//  Created by Michał Listowski on 18.06.2014.
//

#import "Fraction.h"

@implementation Fraction

@synthesize numerator, denominator;

-(void) print{
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
    
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = numerator * f.denominator + denominator * f.numerator;
    result.denominator = denominator * f.denominator;
    
    [result reduce];
    return result;
}
-(id) addId: (id) f{
    id result = [[Fraction alloc]init];
    
    if ([f isMemberOfClass:[Fraction class]]) {
        [result setNumerator:(self.numerator + [f numerator] + self.denominator + [f denominator])];
        [result setDenominator:self.denominator * [f denominator]];
    }
    
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
