//
//  main.m
//  Program 13.01
//
//  Created by Michał Listowski on 29.06.2014.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        int Fibonacci[15], i;
        
        Fibonacci[0] = 0;
        Fibonacci[1] = 1;
        
        for (i = 2; i < 15; i++)
            Fibonacci[i] = Fibonacci[i-2] + Fibonacci[i-1];
        
        for (i = 0; i < 15; i++)
            NSLog(@"%i",Fibonacci[i]);
    }
    return 0;
}
