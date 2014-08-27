//
//  main.m
//  Exercise 5.8
//
//  Created by Michał Listowski on 04.06.2014.
//

#import <Foundation/Foundation.h>

//---- Program Section ----

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        unsigned number, right_digit = 0;
        
        NSLog(@"Enter your number.");
        
        scanf("%i", &number);
        do{
            right_digit += number % 10;
            number /= 10;
        }
        while (number != 0);
        NSLog(@"%i", right_digit);
    }
    return 0;
}
