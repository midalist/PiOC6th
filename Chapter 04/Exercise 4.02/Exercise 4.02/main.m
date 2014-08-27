//
//  main.m
//  Exercise 4.02
//
//  Created by Michał Listowski on 02.06.2014.
//

#import <Foundation/Foundation.h>

//---- Program Section ----

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        float fahrenheit = 27.0;
        float celsius = (fahrenheit - 32) / 1.8; // Formula to change from Fahrenheit to Celsius
        NSLog(@"%.1f fahrenheit is %.3f celsius", fahrenheit, celsius);    
    }
    return 0;
}

