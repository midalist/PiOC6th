//
//  Fraction+NSComparisonMethods.h
//  Exercise 11.3
//
//  Created by Michał Listowski on 27.06.2014.
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
