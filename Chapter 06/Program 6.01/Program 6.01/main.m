//
//  main.m
//  Program 6.1
//
//  Created by Michał Listowski on 05.06.2014.
//

#import <Foundation/Foundation.h>

//---- Program Section ----

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        int number;
        NSLog(@"Type in your number: ");
        scanf("%i", &number);
        
        if (number < 0)
            number = -number;
        NSLog(@"The absolute value is %i", number);
    }
    return 0;
}



