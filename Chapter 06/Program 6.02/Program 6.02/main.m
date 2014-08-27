//
//  main.m
//  Program 6.02
//
//  Created by Michał Listowski on 05.06.2014.
//

#import <Foundation/Foundation.h>

//---- @interface section ----

@interface Fraction : NSObject

-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;
-(int) numerator;
-(int) denominator;
-(double) convertToNum;

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
-(int) numerator{
    return numerator;
}
-(int) denominator{
    return denominator;
}
-(double) convertToNum{
    if (denominator != 0)
        return (double)numerator / denominator;
    else
        return NAN;
}

@end

//---- Program Section ----

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        Fraction *aFraction = [[Fraction alloc] init];
        Fraction *bFraction = [[Fraction alloc] init];
        
        // 1th Fraction to 1/4
        
        [aFraction setNumerator:1];
        [aFraction setDenominator:4];
        
        [aFraction print];
        NSLog(@" =");
        NSLog(@"%g", [aFraction convertToNum]);
        
        [bFraction print];  // Never assigned a value
        NSLog(@" =");
        NSLog(@"%g", [bFraction convertToNum]);
    }
    return 0;
}



