//
//  main.m
//  Exercise 2.3
//
//  Created by Michał Listowski on 28.05.2014.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        int i;
        i = 1;
        
        NSLog(@"Testing...");
        NSLog(@"....%i",i);
        NSLog(@"...%i",i + 1);
        NSLog(@"..%i",i + 2);
        
    }
    return 0;
}

