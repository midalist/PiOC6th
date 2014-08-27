//
//  main.m
//  Program 6.07
//
//  Created by Michał Listowski on 05.06.2014.
//

#import <Foundation/Foundation.h>

//---- Program Section ----

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        char c;
        
        NSLog(@"Enter a single character: ");
        scanf(" %c", &c);
        
        if ((c >= 'a' && c <= 'z') || (c >= 'A' && c<= 'Z'))
            NSLog(@"It's an alphabetic character.");
        else if (c >= '0' && c <= '9')
            NSLog(@"It's an digit.");
        else
            NSLog(@"it's a special character.");
    }
    return 0;
}

