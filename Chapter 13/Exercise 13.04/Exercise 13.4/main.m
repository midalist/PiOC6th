//
//  main.m
//  Exercise 13.4
//
//  Created by Michał Listowski on 08.07.2014.
//

#import <Foundation/Foundation.h>
#import "Fraction+NSComparisonMethods.h"

Fraction* sumFrac( Fraction **fracts, int i){
  Fraction *result = [[Fraction alloc] init];
  [result setTo:0 over:1];
  for (int n = 0; n < i; ++n)
    result = [result add:fracts[n]];
  return result;
}

int main(int argc, const char * argv[])
{
  @autoreleasepool {
    Fraction *result = [[Fraction alloc] init];
    Fraction *__autoreleasing myFract[3];
    for (int i = 0; i < 3; ++i) {
      myFract[i] = [[Fraction alloc] initWith:(1) over:(i + 1)];
    }
    
    result = sumFrac(myFract, 3);
    NSLog(@"%i/%i", result.numerator, result.denominator);
    
  }
  return 0;
}
