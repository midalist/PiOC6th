//
//  main.m
//  Program 13.07
//
//  Created by Michał Listowski on 29.06.2014.
//

//   Block to calculate the nth triangular number

#import <Foundation/Foundation.h>

void (^calculateTriangularNumber)(int) = ^(int n){
    int i, triangularNumber = 0;
    
    for(i = 1; i <= n; ++i){
        triangularNumber += i;
    }
    NSLog(@"Triangular number %i is %i", n, triangularNumber);
};

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        calculateTriangularNumber(10);
        calculateTriangularNumber(20);
        calculateTriangularNumber(50);
    }
    return 0;
}
