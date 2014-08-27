//
//  main.m
//  Program 13.12
//
//  Created by Michał Listowski on 29.06.2014.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        char c = 'Q';
        char *charPtr = &c;
        
        NSLog(@"%c %c", c, *charPtr);
        
        c = '/';
        NSLog(@"%c %c", c, *charPtr);
        
        *charPtr = '(';
        NSLog(@"%c %c", c, *charPtr);
    }
    return 0;
}
