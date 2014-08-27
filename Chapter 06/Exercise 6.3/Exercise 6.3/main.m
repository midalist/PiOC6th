//
//  main.m
//  Exercise 6.3
//
//  Created by Michał Listowski on 06.06.2014.
//

#import <Foundation/Foundation.h>

//---- @interface section ----

@interface Fraction : NSObject

-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;
-(int) numerator;
-(int) denominator;

@end

//---- @implementation section ----

@implementation Fraction{
    
    int numerator;
    int denominator;
}
-(void) print{
    if (denominator == 1)
        NSLog(@"%i", numerator);
    else if (numerator == 0)
        NSLog(@"%i", numerator);
    else
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

@end

//---- Program Section ----

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        Fraction *aFraction = [[Fraction alloc] init];
        Fraction *bFraction = [[Fraction alloc] init];
        
        // Set 1th Fraction to 0/1
        
        [aFraction setNumerator:0];
        [aFraction setDenominator:1];
        
        // Set 2th Fraction to 3/1
        
        [bFraction setNumerator:3];
        [bFraction setDenominator:1];
        
        // Display the fration using our two new methods
        
        [aFraction print];
        [bFraction print];
        
    }
    return 0;
}

