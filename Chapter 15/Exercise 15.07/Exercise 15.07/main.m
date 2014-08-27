//
//  main.m
//  Exercise 15.07
//
//  Created by Michał Listowski on 11.08.2014.
//

#import "Fraction.h"

int main(int argc, const char * argv[])
{
  
  @autoreleasepool {
    NSMutableArray *myFractions = [[NSMutableArray alloc] init];
    Fraction *frac1 = [[Fraction alloc] init];
    Fraction *frac2 = [[Fraction alloc] init];
    Fraction *frac3 = [[Fraction alloc] init];
    
    [frac1 setTo:1 over:2];
    [frac2 setTo:1 over:3];
    [frac3 setTo:1 over:4];
    
    [myFractions addObject:frac1];
    [myFractions addObject:frac2];
    [myFractions addObject:frac3];
    
    for (int i = 0; i < [myFractions count]; ++i)
      NSLog(@"%@", [myFractions[i] description]);
    
    for(Fraction *test in myFractions)
      NSLog(@"%i/%i", test.numerator, test.denominator);
    
    NSLog(@"%@", myFractions);
    
  }
  return 0;
}
