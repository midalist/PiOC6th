//
//  Calculator.m
//  Fraction_Calculator
//
//  Created by Michał Listowski on 28.05.2014.
//

#import "Calculator.h"

@implementation Calculator

@synthesize operand1, operand2, accumulator;

-(id) init{
    self = [super init];
    
    if (self) {
        operand1 = [[Fraction alloc] init];
        operand2 = [[Fraction alloc] init];
        accumulator = [[Fraction alloc] init];
    }
    return self;
}

-(Fraction *) performOperation:(char)op{
    Fraction *result;
    
    switch (op) {
        case '+':
            result = [operand1 add:operand2];
            break;
        case '-':
            result = [operand1 subtract:operand2];
            break;
        case '*':
            result = [operand1 multiply:operand2];
            break;
        case '/':
            result = [operand1 divide:operand2];
            break;
            
        default:
            break;
    }
    
    accumulator.numerator = result.numerator;
    accumulator.denominator = result.denominator;
    
    return result;
}
-(void) clear{
    accumulator.numerator = 0;
    accumulator.denominator = 0;
  operand1.numerator = 0;
  operand1.denominator = 1;
  operand2.numerator = 0;
  operand2.denominator = 1;
}

@end
