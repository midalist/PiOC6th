//
//  Calculator.h
//  Exercise 11.4
//
//  Created by Michał Listowski on 27.06.2014.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

#pragma Accumulator methods
-(void) setAccumulator: (double) value;
-(void) clear;
-(double) accumulator;
#pragma Arithmetic methods
-(void) add: (double) value;
-(void) subtract: (double) value;
-(void) multiply: (double) value;
-(void) divide: (double) value;

@end

@interface Calculator (Trig)

-(double)sin;
-(double)cos;
-(double)tan;

@end
