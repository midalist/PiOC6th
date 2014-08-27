//
//  Fraction.m
//  Exercise 13.2
//
//  Created by Michał Listowski on 06.07.2014.
//

#import "Fraction.h"


static int gcd(int u, int v){
  int temp;
  
  while (v != 0) {
    temp = u % v;
    u = v;
    v = temp;
  }
  return u;
}

static int gCounter;

@implementation Fraction

@synthesize numerator, denominator, addCounter;

+(Fraction *) allocF{
  extern int gCounter;
  ++gCounter;
  return [Fraction alloc];
}
+(int) count{
  extern int gCounter;
  return gCounter;
}


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
  
  ++self.addCounter;
  
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
  int u = gcd(numerator, denominator);
  
  numerator /= u;
  denominator /= u;
}

@end
