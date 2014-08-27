//
//  main.m
//  Program 4.6
//
//  Created by Michał Listowski on 01.06.2014.
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
        Calculator *deskCals = [[Calculator alloc] init];
        
        [deskCals setAccumulator: 100.0];
        [deskCals add: 200];
        [deskCals divide: 15.0];
        [deskCals subtract: 10.0];
        [deskCals multiply: 5];
        
        NSLog(@"The result is %g", [deskCals accumulator]);
    }
    return 0;
}

