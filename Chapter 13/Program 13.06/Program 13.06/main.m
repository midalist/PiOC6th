//
//  main.m
//  Program 13.06
//
//  Created by Michał Listowski on 29.06.2014.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        void (^printMessage)(void) = ^(void){
            NSLog(@"Programming is fun.");
        };
        printMessage();
    }
    return 0;
}
