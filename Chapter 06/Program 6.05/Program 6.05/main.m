//
//  main.m
//  Program 6.05
//
//  Created by Michał Listowski on 05.06.2014.
//

#import <Foundation/Foundation.h>

//---- Program Section ----

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        int year, rem_4, rem_100, rem_400;
        
        NSLog(@"Enter the year to be tested: ");
        scanf("%i", &year);
        
        rem_4 = year % 4;
        rem_100 = year % 100;
        rem_400 = year % 400;
        
        if (rem_4 == 0 && rem_100 != 0 || rem_400 == 0)
            NSLog(@"It's a leap year.");
        else
            NSLog(@"Nope, it's not a leap year.");
    }
    return 0;
}

