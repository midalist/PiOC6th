//
//  Fraction+NSComparisonMethods.m
//  Exercise 13.2
//
//  Created by Michał Listowski on 06.07.2014.
//

#import "Fraction+NSComparisonMethods.h"

@implementation Fraction (NSComparisonMethods)

-(BOOL)isEqualTo:(Fraction *)f{
  [self reduce];
  [f reduce];
  if ((self.numerator == f.numerator) && (self.denominator == f.denominator)) {
    return (BOOL)1;
  } else
    return (BOOL)0;
}
-(BOOL)isLessThanOrEqualTo:(Fraction *)f{
  if([self compare:f] <= 0)
    return (BOOL)1;
  else
    return (BOOL)0;
  
}
-(BOOL)isLessThan:(Fraction *)f{
  if([self compare:f] < 0)
    return (BOOL)1;
  else
    return (BOOL)0;
}
-(BOOL)isGreaterThanOrEqualTo:(Fraction *)f{
  if([self compare:f] >= 0)
    return (BOOL)1;
  else
    return (BOOL)0;
}
-(BOOL)isGreaterThan:(Fraction *)f{
  if([self compare:f] > 0)
    return (BOOL)1;
  else
    return (BOOL)0;
  
}
-(BOOL)isNotEqualTo:(Fraction *)f{
  if([self compare:f] != 0)
    return (BOOL)1;
  else
    return (BOOL)0;
}

@end
