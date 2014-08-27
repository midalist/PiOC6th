//
//  main.m
//  Program 13.13
//
//  Created by Michał Listowski on 29.06.2014.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        struct date{
            int month;
            int day;
            int year;
        };
        
        struct date today, *datePtr;
        
        datePtr = &today;
        datePtr->month = 9;
        datePtr->day = 25;
        datePtr->year = 2014;
        
        NSLog(@"Today's date is %i/%i/%.2i.", datePtr->month, datePtr->day, datePtr->year);
    }
    return 0;
}
