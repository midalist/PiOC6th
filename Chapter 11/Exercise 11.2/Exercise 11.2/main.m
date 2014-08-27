//
//  main.m
//  Exercise 11.2
//
//  Created by Michał Listowski on 27.06.2014.
//

#import <Foundation/Foundation.h>
#import "Fraction+MathOps.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        Fraction *a = [[Fraction alloc]init];
        Fraction *b = [[Fraction alloc]init];
        
        
        [a setTo:4 over:10];
        [b setTo:2 over:5];
        
        if ([a isEqualTo:b])
            NSLog(@"Fraction a is equal to Fraction b");
        else
            NSLog(@"Fraction a isn't equal to Fraction b");
        
        [a setTo:5 over:10];
        
        switch ([a compare:b]) {
            case -1:
                NSLog(@"Fraction a is lower than Fraction b");
                break;
            case 0:
                NSLog(@"Fraction a is equal Fraction b");
                break;
            case 1:
                NSLog(@"Fraction a is biger than Fraction b");
                break;
            default:
                NSLog(@"Something goes wrong");
                break;
        }
        
        
    }
    return 0;
}
