//
//  main.m
//  Program 5.8
//
//  Created by Michał Listowski on 03.06.2014.
//

#import <Foundation/Foundation.h>

//---- Program Section ----

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        unsigned number, right_digit;
        
        NSLog(@"Enter your number.");
        
        scanf("%i", &number);
        
        while (number != 0) {
            right_digit = number % 10;
            NSLog(@"%i", right_digit);
            number /= 10;
        }
    }
    return 0;
}

