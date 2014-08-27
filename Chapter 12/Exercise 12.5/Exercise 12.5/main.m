//
//  main.m
//  Exercise 12.5
//
//  Created by Michał Listowski on 28.06.2014.
//

#import <Foundation/Foundation.h>


#define IS_UPPER_CASE(x) (((x) >= 'A') && ((x) <= 'Z'))
#define IS_LOWER_CASE(x) (((x) >= 'a') && ((x) <= 'z'))
#define IS_ALPHABETIC(x) (IS_LOWER_CASE(x) || IS_UPPER_CASE(x))

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        char a, b;
        int c = 0;
        a = 'A';
        b = 'b';
        NSLog(@"Is a upper case =  %i", IS_UPPER_CASE(a));
        NSLog(@"Is b upper case =  %i", IS_UPPER_CASE(b));
        NSLog(@"Is a alphabetical = %i", IS_ALPHABETIC(a));
        NSLog(@"Is c alphabetical = %i", IS_ALPHABETIC(c));
    }
    return 0;
}
