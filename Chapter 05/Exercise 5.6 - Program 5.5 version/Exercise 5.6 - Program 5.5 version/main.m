//
//  main.m
//  Exercise 5.6 - Program 5.5 version
//
//  Created by Michał Listowski on 04.06.2014.
//

#import <Foundation/Foundation.h>

//---- Program Section ----

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        int triangularNumber, n, number, counter;
        
        counter = 1;
        while (counter <= 5) {
            NSLog(@"What triangular number do you want?");
            
            scanf("%i", &number);
            
            triangularNumber = 0;
            
            n = 0;
            while (n <= number) {
                triangularNumber += n;
                n++;
            }
            
            NSLog(@"Triangular number %i is %i", number, triangularNumber);
            ++counter;
        }
    }
    return 0;
}

