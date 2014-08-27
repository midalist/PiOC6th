//
//  main.m
//  Program 4.4
//
//  Created by Michał Listowski on 01.06.2014.
//

#import <Foundation/Foundation.h>

//---- Program Section ----

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        int a = 25, b = 5, c = 10, d = 7;
        
        NSLog(@"a %% b = %i", a % b);
        NSLog(@"a %% c = %i", a % c);
        NSLog(@"a %% d = %i", a % d);
        NSLog(@"a / d * d + a %% d = %i", a / d * d + a % d);
    }
    return 0;
}

