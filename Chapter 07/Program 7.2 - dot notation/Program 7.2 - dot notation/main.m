//
//  main.m
//  Program 7.2 - dot notation
//
//  Created by Michał Listowski on 07.06.2014.
//

#import "Fraction.h"

//---- Program Section ----

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        Fraction *myFraction = [[Fraction alloc] init];
        
        // Set 1th Fraction to 1/3 using the dot operator
        
        myFraction.numerator = 1;
        myFraction.denominator = 3;
        
        // Display the fraction using our two new methods
        
        NSLog(@"The numerator is %i, and the denominator is %i", myFraction.numerator, myFraction.denominator);
    }
    return 0;
}

