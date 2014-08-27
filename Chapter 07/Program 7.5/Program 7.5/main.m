//
//  main.m
//  Program 7.5
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
        
        Fraction *resultFraction;
        
        // Set two Fractions to 1/4 and 1/2 add add them together
        
        [aFraction setTo:1 over:4];
        [bFraction setTo:1 over:2];
        
        [aFraction print];
        NSLog(@"+");
        [bFraction print];
        NSLog(@"=");
        
        resultFraction = [aFraction add:bFraction];
        [resultFraction print];
    }
    return 0;
}

