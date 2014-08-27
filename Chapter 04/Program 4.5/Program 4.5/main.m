//
//  main.m
//  Program 4.5
//
//  Created by Michał Listowski on 01.06.2014.
//

#import <Foundation/Foundation.h>

//---- Program Section ----

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        float f1 = 123.125, f2;
        int i1, i2 = -150;
        
        i1 = f1;    // Floating to integer conversion
        NSLog(@"%f assigned to an int produces %i", f1, i1);
        
        f1 = i2;    // Integer to floating conversion
        NSLog(@"%i assigned to a float produces %f", i2, f1);
        
        f1 = i2 / 100;  // Integer divided by integer
        NSLog(@"%i divided by 100 produces %f", i2, f1);
        
        f2 = i2 / 100.0;    // Integer divided by float
        NSLog(@"%i divided by 100.0 produces %f", i2, f2);
        
        f2 = (float)i2 / 100;
        NSLog(@"(float) %i divided by 100 produces %f", i2, f2);
    }
    return 0;
}

