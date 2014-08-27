//
//  main.m
//  Exercise 6.4
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
-(void) print;

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
-(void) print{
    NSLog(@"= %f", accumulator);
}

@end

//---- Program Section ----

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        double value;
        char operator;
        Calculator *deskCalc = [[Calculator alloc] init];
        
        NSLog(@"Begin calculations.");
        
        do {
            scanf("%lf %c", &value, &operator);
            if ((operator == 'S' || operator == 's')){
                [deskCalc setAccumulator: value];
                [deskCalc print];
            }
            else if (operator == '+'){
                [deskCalc add: value];
                [deskCalc print];
            }
            else if (operator == '-'){
                [deskCalc subtract: value];
                [deskCalc print];
            }
            else if (operator == '*'){
                [deskCalc multiply: value];
                [deskCalc print];
            }
            else if (operator == '/'){
                [deskCalc divide: value];
                [deskCalc print];
            }
            else if ((operator == 'E' || operator == 'e'))
                [deskCalc print];
            else
                NSLog(@"Unknown Operator");
            
        } while (!(operator == 'E' || operator == 'e'));
    }
    return 0;
}

