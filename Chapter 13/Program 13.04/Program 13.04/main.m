//
//  main.m
//  Program 13.04
//
//  Created by Michał Listowski on 29.06.2014.
//

#import <Foundation/Foundation.h>

void calculateTriangularNumber(int n){
    int i, triangularNumber = 0;
    
    for (i = 1; i < n; ++i)
        triangularNumber += i;
    
    NSLog(@"Triangular number %i = %i", n, triangularNumber);
}

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        calculateTriangularNumber(10);
        calculateTriangularNumber(20);
        calculateTriangularNumber(50);
    }
    return 0;
}
