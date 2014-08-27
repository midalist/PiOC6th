//
//  Complex.m
//  Program
//
//  Created by Michał Listowski on 12.06.2014.
//

#import "Complex.h"

@implementation Complex{
    double real;
    double imaginary;
}

@synthesize real, imaginary;

-(void) print{
    NSLog(@" %g + %gi ", real, imaginary);
}
-(void) setReal:(double)a andImaginary:(double)b{
    real = a;
    imaginary = b;
}
-(Complex *) add: (Complex *) f{
    Complex *result = [[Complex alloc]init];
    
    result.real = self.real + f.real;
    result.imaginary = self.imaginary + f.imaginary;
    
    return result;
}

@end
