//
//  Fraction.m
//  Exercise 7.5
//
//  Created by Michał Listowski on 08.06.2014.
//

#import "Fraction.h"

@implementation Fraction;

-(void) print{
    NSLog(@"%i/%i", _numerator, _denominator);
}
-(double) convertToNum{
    if (_denominator != 0)
        return (double)_numerator / _denominator;
    else
        return NAN;
}
-(void) setTo: (int) n over: (int) d{
    _numerator = n;
    _denominator = d;
}

@end
