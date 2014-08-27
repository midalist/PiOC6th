//
//  main.m
//  Program 3.3
//
//  Created by Michał Listowski on 31.05.2014.
//

#import <Foundation/Foundation.h>

//---- @interface section ----

@interface Fraction : NSObject

-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;

@end

//---- @implementation section ----

@implementation Fraction{
  
  int numerator;
  int denominator;
}
-(void) print{
  NSLog(@"%i/%i", numerator, denominator);
}
-(void) setNumerator: (int) n{
  numerator = n;
}
-(void) setDenominator: (int) d{
  denominator = d;
}

@end

//---- Program Section ----

int main(int argc, const char * argv[])
{
  
  @autoreleasepool {
    
    Fraction *frac1 = [[Fraction alloc] init];
    Fraction *frac2 = [[Fraction alloc] init];
    
    
    // Set 1th Fraction to 2/3
    
    [frac1 setNumerator:2];
    [frac1 setDenominator:3];
    
    // Set 2th Fraction to 3/7
    
    [frac2 setNumerator:3];
    [frac2 setDenominator:7];
    
    // Display the frations
    
    NSLog(@"First fraction is:");
    [frac1 print];
    NSLog(@"Second fraction is:");
    [frac2 print];
    
  }
  return 0;
}

