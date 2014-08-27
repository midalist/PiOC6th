//
//  main.m
//  Program 5.2
//
//  Created by Michał Listowski on 03.06.2014.
//

#import <Foundation/Foundation.h>

//---- Program Section ----

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        int triangularNumber, n;
        
        triangularNumber = 0;
        
        for (n = 0; n <= 200; n = n + 1) {
            triangularNumber += n;
        }
        
        NSLog(@"The 200th triangular number is %i", triangularNumber);
    }
    return 0;
}

