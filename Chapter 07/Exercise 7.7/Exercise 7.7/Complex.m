//
//  Complex.m
//  Exercise 7.7
//
//  Created by Michał Listowski on 08.06.2014.
//

#import "Complex.h"

@implementation Complex{
    double real;
    double imaginary;
}

-(void) setReal: (double) a{
    real = a;
}
-(void) setImaginary: (double) b{
    imaginary = b;
}
-(void) print{
    NSLog(@"%.2f + %.2fi", real, imaginary);
}
-(double) real{
    return real;
}
-(double) imaginary{
    return imaginary;
}
-(Complex *) add: (Complex *) complexNum{
    real += complexNum.real;
    imaginary += complexNum.imaginary;
    
    return self;
}

@end
