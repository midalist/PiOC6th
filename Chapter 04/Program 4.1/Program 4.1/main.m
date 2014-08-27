//
//  main.m
//  Program 4.1
//
//  Created by Michał Listowski on 01.06.2014.
//

#import <Foundation/Foundation.h>

//---- Program Section ----

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        int integerVar = 100;
        float floatingVar = 331.79;
        double doubleVar = 8.44e+11;
        char charVar = 'W';
        
        NSLog(@"integerVar = %i", integerVar);
        NSLog(@"floatingVar = %f", floatingVar);
        NSLog(@"doubleVar = %e", doubleVar);
        NSLog(@"doubleVar = %g", doubleVar);
        NSLog(@"charVar = %c", charVar);
    }
    return 0;
}



