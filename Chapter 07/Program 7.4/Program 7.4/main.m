//
//  main.m
//  Program 7.4
//
//  Created by Michał Listowski on 07.06.2014.
//

#import "Fraction.h"

//---- Program Section ----

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        Fraction *aFraction = [[Fraction alloc] init];
        Fraction *bFraction = [[Fraction alloc] init];
        
        // Set two Fractions to 1/4 and 1/2 add add them together
        
        [aFraction setTo:1 over:4];
        [bFraction setTo:1 over:2];
        
        [aFraction print];
        NSLog(@"+");
        [bFraction print];
        NSLog(@"=");
        
        [aFraction add:bFraction];
        
        // Reduce the result of the addition and print the result
        
        [aFraction reduce];
        [aFraction print];
    }
    return 0;
}

