//
//  Calculator.m
//  Exercise 11.4
//
//  Created by Michał Listowski on 27.06.2014.
//

#import "Calculator.h"

@implementation Calculator{
    double accumulator;
}

// Accumulator methods
-(void) setAccumulator: (double) value{
    accumulator = value;
}
-(void) clear{
    accumulator = 0;
}
-(double) accumulator{
    return accumulator;
}
// Arithmetic methods
-(void) add: (double) value{
    accumulator += value;
}
-(void) subtract: (double) value{
    accumulator -= value;
}
-(void) multiply: (double) value{
    accumulator *= value;
}
-(void) divide: (double) value{
    accumulator /= value;
}

@end

@implementation Calculator (Trig)

-(double)sin{
    return sin(accumulator);
}
-(double)cos{
    return cos(accumulator);
}
-(double)tan{
    return tan(accumulator);
}

@end
