//
//  main.m
//  Program 13.09
//
//  Created by Michał Listowski on 29.06.2014.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        int foo = 10;
        
        void (^printFoo)(void) = ^(void){
            NSLog(@"foo = %i", foo);
            foo = 20;   //  ** THIS LINE GENERATES A COMPILER ERROR
        };
        foo = 15;
        
        printFoo();
        NSLog(@"foo = %i", foo);
    }
    return 0;
}
