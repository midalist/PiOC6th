//
//  Fraction.m
//  Program 18.3
//
//  Created by Michał Listowski on 25.08.2014.
//

#import "Fraction.h"

@implementation Fraction

@synthesize numerator, denominator;


-(instancetype) initWith:(int) n over:(int) d{
  self = [super init];
  if (self)
    [self setTo:n over:d];
  return self;
}

-(instancetype) init{
  return [self initWith:0 over:0];
}

-(void) print{
  NSLog(@"%i/%i", numerator, denominator);
}

-(void) setTo: (int) n over: (int) d{
  numerator = n;
  denominator = d;
}

-(id)copyWithZone:(NSZone *)zone {
  Fraction *newFract = [[Fraction allocWithZone:zone] init];
  [newFract setTo:numerator over:denominator];
  return newFract;
}

@end
