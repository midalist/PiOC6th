//
//  main.m
//  Program 4.2
//
//  Created by Michał Listowski on 01.06.2014.
//

#import <Foundation/Foundation.h>

//---- Program Section ----

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        int a = 100;
        int b = 2;
        int c = 25;
        int d = 4;
        int result;
        
        result = a - b; // Subtraction
        NSLog(@"a - b = %i", result);
        
        result = a * b; // Multiplication
        NSLog(@"a * b = %i", result);
        
        result = a / b; // Division
        NSLog(@"a / b = %i", result);
        
        result = a + b * c; // Precedence
        NSLog(@"a + b * c = %i", result);
        
        NSLog(@"a * b + c * d = %i", a * b + c * d);
    }
    return 0;
}
