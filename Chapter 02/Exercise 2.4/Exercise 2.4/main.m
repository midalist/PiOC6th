//
//  main.m
//  Exercise 2.4
//
//  Created by Michał Listowski on 28.05.2014.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        int value1, value2, result;
        value1 = 87;
        value2 = 15;
        result = value1 - value2;
        NSLog(@"%i subtract %i equals %i", value1, value2, result);
        
    }
    return 0;
}

