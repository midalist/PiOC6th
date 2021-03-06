//
//  main.m
//  Exercise 6.2
//
//  Created by Michał Listowski on 06.06.2014.
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
        BOOL canPrint = YES;
        
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
            if (value2 == 0) {
                NSLog(@"Division by zero.");
                canPrint = NO;
            }
            else
                [deskCalc divide: value2];
            else {
                NSLog(@"Unknow operator.");
                canPrint = NO;
            }
        if (canPrint == YES)
            NSLog(@"%.2f", [deskCalc accumulator]);
    }
    return 0;
}

