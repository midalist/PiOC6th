//
//  main.m
//  Exercise 12.6
//
//  Created by Michał Listowski on 28.06.2014.
//

#import <Foundation/Foundation.h>

#define IS_UPPER_CASE(x) (((x) >= 'A') && ((x) <= 'Z'))
#define IS_LOWER_CASE(x) (((x) >= 'a') && ((x) <= 'z'))
#define IS_ALPHABETIC(x) (IS_LOWER_CASE(x) || IS_UPPER_CASE(x))
#define IS_DIGIT(x) (((x) >= '0') && ((x) <= '9'))
#define IS_SPECIAL(x) (!IS_ALPHABETIC(x) && !IS_DIGIT(x))

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        char a, b, c, d;
        a = 'A';
        b = 'b';
        c = '0';
        d = ';';
        NSLog(@"Is a upper case =  %i", IS_UPPER_CASE(a));
        NSLog(@"Is b upper case =  %i", IS_UPPER_CASE(b));
        NSLog(@"Is a alphabetical = %i", IS_ALPHABETIC(a));
        NSLog(@"Is c alphabetical = %i", IS_ALPHABETIC(c));
        NSLog(@"Is c digit = %i", IS_DIGIT(c));
        NSLog(@"Is a digit = %i", IS_DIGIT(a));
        NSLog(@"Is d special = %i", IS_SPECIAL(d));
        NSLog(@"Is a special = %i", IS_SPECIAL(a));
    }
    return 0;
}
