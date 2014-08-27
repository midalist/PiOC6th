//
//  main.m
//  Program 13.08
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
        };
        foo = 15;
        
        printFoo();
    }
    return 0;
}
