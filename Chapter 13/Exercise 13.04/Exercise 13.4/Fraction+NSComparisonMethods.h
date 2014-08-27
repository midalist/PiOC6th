//
//  Fraction+NSComparisonMethods.h
//  Exercise 13.2
//
//  Created by Michał Listowski on 06.07.2014.
//

#import "Fraction+MathOps.h"

@interface Fraction (NSComparisonMethods)

-(BOOL)isEqualTo:(Fraction *)f;
-(BOOL)isLessThanOrEqualTo:(Fraction *)f;
-(BOOL)isLessThan:(Fraction *)f;
-(BOOL)isGreaterThanOrEqualTo:(Fraction *)f;
-(BOOL)isGreaterThan:(Fraction *)f;
-(BOOL)isNotEqualTo:(Fraction *)f;

@end
