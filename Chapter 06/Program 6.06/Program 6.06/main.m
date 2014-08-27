//
//  main.m
//  Program 6.06
//
//  Created by Michał Listowski on 05.06.2014.
//

#import <Foundation/Foundation.h>

//---- Program Section ----

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        int number, sign;
        
        NSLog(@"Please type in a number: ");
        scanf("%i", &number);
        
        if (number < 0)
            sign = -1;
        else if (number == 0)
            sign = 0;
        else    // Must be positive
            sign = 1;
        
        NSLog(@"Sign = %i", sign);
        
    }
    return 0;
}

