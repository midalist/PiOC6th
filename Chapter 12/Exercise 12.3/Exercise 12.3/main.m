//
//  main.m
//  Exercise 12.3
//
//  Created by Michał Listowski on 28.06.2014.
//

#import <Foundation/Foundation.h>


#define MAX3(a,b,c) (((a) > (b)) ? (((a) > (c)) ? (a) : (c)) : (((b) > (c)) ? (b) : (c)))

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        int a, b, c;
        a = 8;
        b = 6;
        c = 7;
        NSLog(@"Biggest value is %i", MAX3(a, b, c));
    }
    return 0;
}
