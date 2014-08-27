//
//  main.m
//  Program 6.09
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
        
        switch (operator) {
            case '+':
                [deskCalc add: value2];
                break;
            case '-':
                [deskCalc subtract: value2];
                break;
            case '*':
                [deskCalc multiply: value2];
                break;
            case '/':
                [deskCalc divide: value2];
                break;
                
            default:
                NSLog(@"Unknown operator.");
                break;
        }
        NSLog(@"%.2f", [deskCalc accumulator]);
    }
    return 0;
}

