//
//  main.m
//  Exercise 5.2
//
//  Created by Michał Listowski on 04.06.2014.
//

#import <Foundation/Foundation.h>

//---- Program Section ----

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        int n, triangularNUmber;
        for (n = 5, triangularNUmber = 0; n <= 50; n += 5)
            NSLog(@"Triangular number for %i is %i", n, (n * (n +1) / 2));
        return 0;
    }
}

