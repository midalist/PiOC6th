//
//  main.m
//  Program 13.11
//
//  Created by Michał Listowski on 29.06.2014.
//

//  Program to illustrate pointers

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        int count = 10, x;
        int *intPtr;
        
        intPtr = &count;
        x = *intPtr;
        
        NSLog(@"Count = %i, x = %i", count, x);
    }
    return 0;
}
