//
//  main.m
//  Exercise 5.7
//
//  Created by Michał Listowski on 04.06.2014.
//

#import <Foundation/Foundation.h>

//---- Program Section ----

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        unsigned number, right_digit;
        
        NSLog(@"Enter your number.");
        
        scanf("%i", &number); // If i write -1 it will change to biggest nunber that int can store
        
        while (number != 0) {
            right_digit = number % 10;
            NSLog(@"%i", right_digit);
            number /= 10;
        }
    }
    return 0;
}

