//
//  main.m
//  Exercise 7.5
//
//  Created by Michał Listowski on 08.06.2014.
//

#import "Fraction.h"

//---- Program Section ----

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        Fraction *aFraction = [[Fraction alloc] init];
        
        [aFraction setTo:100 over:200];
        [aFraction print];
        
        [aFraction setTo:1 over:3];
        [aFraction print];
    }
    return 0;
}

