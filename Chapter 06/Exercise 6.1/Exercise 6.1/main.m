//
//  main.m
//  Exercise 6.1
//
//  Created by Michał Listowski on 06.06.2014.
//

#import <Foundation/Foundation.h>

//---- Program Section ----

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        int value1, value2;
        
        NSLog(@"Type in 2 integer values:");
        scanf("%i %i", &value1, &value2);
        
        if (value1 % value2 == 0)
            NSLog(@"Number %i is divisible by %i", value1, value2);
        else
            NSLog(@"Number %i is not divisible by %i", value1, value2);
    }
    return 0;
}

