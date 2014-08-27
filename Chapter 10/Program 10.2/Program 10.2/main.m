//
//  main.m
//  Program 10.2
//
//  Created by Michał Listowski on 21.06.2014.
//

#import "Fraction.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        Fraction *a, *b, *c;
        
        NSLog(@"Fraction allocated : %i", [Fraction count]);
        
        a = [[Fraction allocF]init];
        b = [[Fraction allocF]init];
        c = [[Fraction allocF]init];
        
        NSLog(@"Fraction allocated : %i", [Fraction count]);
    }
    return 0;
}
