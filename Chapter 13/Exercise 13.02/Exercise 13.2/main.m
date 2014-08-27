//
//  main.m
//  Exercise 13.2
//
//  Created by Michał Listowski on 06.07.2014.
//

#import <Foundation/Foundation.h>
#import "Fraction+NSComparisonMethods.h"

int main(int argc, const char * argv[])
{
  @autoreleasepool {
    Fraction *myFract = [[Fraction alloc]initWith:4 over:8];
    
    [myFract reduce];
    
    NSLog(@"%i/%i", myFract.numerator, myFract.denominator);
  }
  return 0;
}
