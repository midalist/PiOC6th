//
//  main.m
//  Exercise 5.3
//
//  Created by Michał Listowski on 04.06.2014.
//

#import <Foundation/Foundation.h>

//---- Program Section ----

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        int n, factorialNUmber;
        for (n = 1, factorialNUmber = 1; n <= 10; n++){
            factorialNUmber *= n;
            NSLog(@"Factorial of %i! is %i", n, factorialNUmber);
        }
        return 0;
    }
}

