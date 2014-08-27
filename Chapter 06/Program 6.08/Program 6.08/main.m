//
//  main.m
//  Program 6.08
//
//  Created by Michał Listowski on 05.06.2014.
//

#import <Foundation/Foundation.h>

//---- @interface section ----

@interface Calculator : NSObject

// Accumulator methods
-(void) setAccumulator: (double) value;
-(void) clear;
-(double) accumulator;
// Arithmetic methods
-(void) add: (double) value;
-(void) subtract: (double) value;
-(void) multiply: (double) value;
-(void) divide: (double) value;

@end

//---- @implementation section ----

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

//---- Program Section ----

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        double value1, value2;
        char operator;
        Calculator *deskCalc = [[Calculator alloc] init];
        
        NSLog(@"Type in your expresion.");
        scanf("%lf %c %lf", &value1, &operator, &value2);
        
        [deskCalc setAccumulator: value1];
        if (operator == '+')
            [deskCalc add: value2];
        else if (operator == '-')
            [deskCalc subtract: value2];
        else if (operator == '*')
            [deskCalc multiply: value2];
        else if (operator == '/')
            [deskCalc divide: value2];
        
        NSLog(@"%.2f", [deskCalc accumulator]);
    }
    return 0;
}

