//
//  main.m
//  Exercise 13.1
//
//  Created by Michał Listowski on 03.07.2014.
//

#import <Foundation/Foundation.h>

float arraySum(float array[], int n){
    float sum = 0;
    float *ptr;
    float *arrayEnd = array + n;
    for (ptr = array; ptr < arrayEnd; ++ptr)
        sum += *ptr;
    return (sum);
}

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        float values[10] = {3.2, 7, -9, 3, 6, -1, 7, 9, 1, -5, };
        
        NSLog(@"The sum is %g", arraySum(values, 10));
    }
    return 0;
}
