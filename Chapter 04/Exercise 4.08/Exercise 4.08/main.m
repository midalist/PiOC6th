//
//  main.m
//  Exercise 4.08
//
//  Created by Michał Listowski on 02.06.2014.
//

#import <Foundation/Foundation.h>

//---- @interface section ----

@interface Calculator : NSObject

// Accumulator methods
-(void) setAccumulator: (double) value;
-(void) clear;
-(double) accumulator;
// Arithmetic methods
-(double) add: (double) value;
-(double) subtract: (double) value;
-(double) multiply: (double) value;
-(double) divide: (double) value;

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
-(double) add: (double) value{
    return accumulator += value;
}
-(double) subtract: (double) value{
    return accumulator -= value;
}
-(double) multiply: (double) value{
    return accumulator *= value;
}
-(double) divide: (double) value{
    return accumulator /= value;
}

@end

//---- Program Section ----

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        Calculator *deskCals = [[Calculator alloc] init];
        
        [deskCals setAccumulator: 100.0];
        NSLog(@"Result of add method  %g", [deskCals add: 200]);
        NSLog(@"Result of add method  %g",[deskCals divide: 15.0]);
        NSLog(@"Result of add method  %g",[deskCals subtract: 10.0]);
        NSLog(@"Result of add method  %g",[deskCals multiply: 5]);
        
        NSLog(@"The result is %g", [deskCals accumulator]);
    }
    return 0;
}

