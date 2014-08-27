//
//  main.m
//  Program 5.7
//
//  Created by Michał Listowski on 03.06.2014.
//

#import <Foundation/Foundation.h>

//---- Program Section ----

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        unsigned u, v, temp;
        
        NSLog(@"Please type in two nonnegative integers.");
        
        scanf("%u%u", &u, &v);
        
        while ( v != 0) {
            temp = u % v;
            u = v;
            v = temp;
        }
        NSLog(@"Their greatest common divisor is %u", u);
    }
    return 0;
}

