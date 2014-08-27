//
//  main.m
//  Program 3.2
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
    
    Fraction *myFraction;
    
    myFraction = [Fraction alloc];
    myFraction = [myFraction init];
    
    // Set Fraction to 1/3
    
    [myFraction setNumerator:1];
    [myFraction setDenominator:3];
    
    // Display the fration using the print method
    
    NSLog(@"The Value of myFraction is:");
    [myFraction print];
    
  }
  return 0;
}

