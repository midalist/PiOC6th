//
//  main.m
//  Exercise 12.2
//
//  Created by Michał Listowski on 28.06.2014.
//

#import <Foundation/Foundation.h>

#define MIN(a,b) (((a) < (b)) ? (a) : (b))


int main(int argc, const char * argv[])
{
    @autoreleasepool {
        int a, b;
        a = 5;
        b = 6;
        NSLog(@"Mniejsza jest %i", MIN(a, b));
    }
    return 0;
}
