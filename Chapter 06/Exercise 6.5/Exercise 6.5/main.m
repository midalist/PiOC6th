//
//  main.m
//  Exercise 6.5
//
//  Created by Michał Listowski on 06.06.2014.
//

#import <Foundation/Foundation.h>

//---- Program Section ----

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        signed number, right_digit;
        BOOL isNegative = NO;
        
        NSLog(@"Enter your number.");
        
        scanf("%i", &number);
        if ( number < 0) {
            number = -number;
            isNegative = YES;
        }
        
        do{
            right_digit = number % 10;
            NSLog(@"%i", right_digit);
            number /= 10;
        }
        while (number != 0);
        if (isNegative)
            NSLog(@"-");
    }
    return 0;
}

