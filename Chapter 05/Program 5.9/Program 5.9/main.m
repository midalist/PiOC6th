//
//  main.m
//  Program 5.9
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
        do{
            right_digit = number % 10;
            NSLog(@"%i", right_digit);
            number /= 10;
        }
        while (number != 0);
    }
    return 0;
}

