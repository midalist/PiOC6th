//
//  main.m
//  Program 7.1
//
//  Created by Michał Listowski on 07.06.2014.
//

#import "Fraction.h"

//---- Program Section ----

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        Fraction *myFraction = [[Fraction alloc] init];
        
        // Set 1th Fraction to 1/3
        
        [myFraction setNumerator:1];
        [myFraction setDenominator:3];
        
        // Display the fration using our two new methods
        
        NSLog(@"The value of myFraction is : ");
        [myFraction print];
        
    }
    return 0;
}

