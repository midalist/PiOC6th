//
//  main.m
//  Exercise 5.6 - Program 5.3 version
//
//  Created by Michał Listowski on 04.06.2014.
//

#import <Foundation/Foundation.h>

//---- Program Section ----

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        int triangularNumber, n;
        
        NSLog(@"TABLE OF TRIANGULAR NUMBERS");
        NSLog(@" n   Sum from 1 to n");
        NSLog(@"--   ---------------");
        
        triangularNumber = 0;
        
        n = 0;
        while (n <= 10) {
            triangularNumber += n;
            NSLog(@"%-2i               %3i", n, triangularNumber);
            n++;
        }
        
        
    }
    return 0;
}

