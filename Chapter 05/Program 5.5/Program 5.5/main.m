//
//  main.m
//  Program 5.5
//
//  Created by Michał Listowski on 03.06.2014.
//

#import <Foundation/Foundation.h>

//---- Program Section ----

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        int triangularNumber, n, number, counter;
        
        for (counter = 1; counter <= 5; ++counter) {
            NSLog(@"What triangular number do you want?");
            
            scanf("%i", &number);
            
            triangularNumber = 0;
            
            for (n = 0; n <= number; n = n + 1) {
                triangularNumber += n;
            }
            
            NSLog(@"Triangular number %i is %i", number, triangularNumber);
        }
    }
    return 0;
}

