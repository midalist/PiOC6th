//
//  main.m
//  Program 13.15
//
//  Created by Michał Listowski on 29.06.2014.
//

//  Function to sum the elements of an integer array

#import <Foundation/Foundation.h>

int arraySum(int array[], int n){
    int sum = 0, *ptr;
    int *arrayEnd = array + n;
    for (ptr = array; ptr < arrayEnd; ++ptr)
        sum += *ptr;
    return (sum);
}

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        int arraySum(int array[], int n);
        int values[10] = {3, 7, -9, 3, 6, -1, 7, 9, 1, -5, };
        
        NSLog(@"The sum is %i", arraySum(values, 10));
    }
    return 0;
}
