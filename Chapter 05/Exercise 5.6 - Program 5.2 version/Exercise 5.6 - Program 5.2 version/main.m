//
//  main.m
//  Exercise 5.6 - Program 5.2 version
//
//  Created by Michał Listowski on 04.06.2014.
//

#import <Foundation/Foundation.h>

//---- Program Section ----

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        int triangularNumber, n;
        
        triangularNumber = 0;
        n = 0;
        
        while (n <= 200) {
            triangularNumber += n;
            n++;
        }
        NSLog(@"The 200th triangular number is %i", triangularNumber);
    }
    return 0;
}

