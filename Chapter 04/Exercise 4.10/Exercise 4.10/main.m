//
//  main.m
//  Exercise 4.10
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
// New methods
-(double) changeSign;   // Change sigh of accumulator
-(double) reciprocal;   // 1/accumulator
-(double) xSquared;     // Accumulator squared
// Memory methods
-(double) memoryClear;  // Clear memory
-(double) memoryStore;  // Set memory to accumulator
-(double) memoryRecall; // Set accumulator to memory
-(double) memoryAdd: (double) value;    // Add value to memory
-(double) memorySubtract: (double) value;   // Subtract value from memory

@end

//---- @implementation section ----

@implementation Calculator{
    double accumulator;
    double memory;
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
// New methods
-(double) changeSign{
    return accumulator *= -1;
}
-(double) reciprocal{
    return accumulator = 1 / accumulator;
}
-(double) xSquared{
    return accumulator *= accumulator;
}
// Memory methods
-(double) memoryClear{
    return memory = 0;
}
-(double) memoryStore{
    return accumulator = memory;
}
-(double) memoryRecall{
    return memory = accumulator;
}
-(double) memoryAdd: (double) value{
    return memory += value;
}
-(double) memorySubtract: (double) value{
    return memory -= value;
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
        NSLog(@"Result of xSquared method  %g",[deskCals xSquared]);
        
        // Put accumulator to memory and subtract 1000 from memory
        [deskCals memoryRecall];
        [deskCals memorySubtract:1000];
        
        NSLog(@"The result is %g", [deskCals accumulator]);
        
        // Test memory method
        [deskCals memoryStore];
        NSLog(@"Value in memory is %g", [deskCals accumulator]);
    }
    return 0;
}

