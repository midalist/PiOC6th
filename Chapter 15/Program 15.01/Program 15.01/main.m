//
//  main.m
//  Program 15.01
//
//  Created by Michał Listowski on 18.07.2014.
//
//  Working with Numbers
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
  @autoreleasepool {
    NSNumber *myNumber, *floatNumber, *intNumber;
    NSInteger myInt;
    
    //  Integer value
    
    intNumber = [NSNumber numberWithInteger:100];
    myInt = [intNumber integerValue];
    NSLog(@"%li", (long)myInt);
    
    //  Long value
    
    myNumber = [NSNumber numberWithLong:0xabcdf];
    NSLog(@"%lx", [myNumber longValue]);
    
    //  Char value
    
    myNumber = [NSNumber numberWithChar:'X'];
    NSLog(@"%c", [myNumber charValue]);
    
    //  Float value
    
    floatNumber = [NSNumber numberWithFloat:100.00];
    NSLog(@"%g", [floatNumber floatValue]);
    
    //  Double value
    
    myNumber = [NSNumber numberWithDouble:1234e+15];
    NSLog(@"%lg", [myNumber doubleValue]);
    
    //  Wrong access here
    
    NSLog(@"%li", (long) [myNumber integerValue]);
    
    //  Test two Numbers for equality
    
    if ([intNumber isEqualToNumber:floatNumber] == YES)
      NSLog(@"Numbers are equal");
    else
      NSLog(@"Numbers are not equal");
    
    //  Test if one Number is <, = or > second number
    
    if ([intNumber compare:myNumber] == NSOrderedAscending)
      NSLog(@"First number is less than second");
  }
  return 0;
}
