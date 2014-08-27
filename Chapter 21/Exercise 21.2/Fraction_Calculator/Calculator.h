//
//  Calculator.h
//  Fraction_Calculator
//
//  Created by Michał Listowski on 28.05.2014.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

@interface Calculator : NSObject

@property (strong, nonatomic) Fraction *operand1;
@property (strong, nonatomic) Fraction *operand2;
@property (strong, nonatomic) Fraction *accumulator;

-(Fraction *) performOperation:(char)op;
-(void) clear;

@end
