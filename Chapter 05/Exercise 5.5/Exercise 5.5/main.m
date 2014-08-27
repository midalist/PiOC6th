//
//  main.m
//  Exercise 5.5
//
//  Created by Michał Listowski on 04.06.2014.
//

#import <Foundation/Foundation.h>

//---- Program Section ----

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        int triangularNumber, n, number, counter, timesOfCalculated;
        
        NSLog(@"How many number of triangulars numbers you want to be calculated?");
        
        scanf("%i", &timesOfCalculated);
        
        for (counter = 1; counter <= timesOfCalculated; ++counter) {
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

