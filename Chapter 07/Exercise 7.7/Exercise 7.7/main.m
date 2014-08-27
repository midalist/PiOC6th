//
//  main.m
//  Exercise 7.7
//
//  Created by Michał Listowski on 08.06.2014.

//

#import "Complex.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        Complex *aComplex = [[Complex alloc] init];
        Complex *bComplex = [[Complex alloc] init];
        
        [aComplex setReal:5.3];
        [aComplex setImaginary:7];
        [aComplex print];
        
        bComplex.real = 2.7;
        bComplex.imaginary = 8;
        [bComplex print];
        
        aComplex = [aComplex add:bComplex];
        [aComplex print];
        NSLog(@"After add method value of real party is %.2f and imaginary part is %.2fi", [aComplex real], [aComplex imaginary]);
    }
    return 0;
}

