//
//  Fraction+Comparision.m
//  Exercise 15.08
//
//  Created by Michał Listowski on 11.08.2014.
//

#import "Fraction+Comparision.h"

@implementation Fraction (Comparision)

-(NSComparisonResult) comparisionFraction: (Fraction *) fract{
  double selfFract = self.numerator / self.denominator;
  double fromFract = fract.numerator / fract.denominator;
  
  if (selfFract > fromFract)
    return NSOrderedDescending;
  else if (selfFract < fromFract)
    return NSOrderedAscending;
  
  return NSOrderedSame;
}

@end
