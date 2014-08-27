//
//  main.m
//  Program 6.03
//
//  Created by Michał Listowski on 05.06.2014.
//

#import <Foundation/Foundation.h>

//---- Program Section ----

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        int number_to_test, reminder;
        
        NSLog(@"Enter your number to be tested: ");
        scanf("%i", &number_to_test);
        
        reminder = number_to_test % 2;
        
        if (reminder == 0)
            NSLog(@"The number is even.");
        
        if (reminder != 0)
            NSLog(@"The number is odd.");
    }
    return 0;
}

