//
//  main.m
//  Program 5.3
//
//  Created by Michał Listowski on 03.06.2014.
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
        
        for (n = 0; n <= 10; n = n + 1) {
            triangularNumber += n;
            NSLog(@"%i               %i", n, triangularNumber);
        }
        
        
    }
    return 0;
}

