//
//  main.m
//  Exercise 12.4
//
//  Created by Michał Listowski on 28.06.2014.
//

#import <Foundation/Foundation.h>


#define IS_UPPER_CASE(x) (((x) >= 'A') && ((x) <= 'Z'))

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        char a, b;
        a = 'A';
        b = 'b';
        NSLog(@"Is a upper case =  %i", IS_UPPER_CASE(a));
        NSLog(@"Is b upper case =  %i", IS_UPPER_CASE(b));
    }
    return 0;
}
