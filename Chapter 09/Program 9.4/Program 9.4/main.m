//
//  main.m
//  Program 9.4
//
//  Created by Michał Listowski on 15.06.2014.
//

#import "Fraction.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        Fraction *f = [[Fraction alloc]init];
        [f noSuchMathod];
        NSLog(@"Execution continues!");
    }
    return 0;
}

