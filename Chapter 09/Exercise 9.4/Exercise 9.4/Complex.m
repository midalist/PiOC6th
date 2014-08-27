//
//  Complex.m
//  Exercise 9.2
//
//  Created by Michał Listowski on 18.06.2014.
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
-(id) addId: (id) f{
    id result = [[Complex alloc]init];
    if ([f isMemberOfClass:[Complex class]]) {
        [result setReal:(self.real + [f real]) andImaginary:(self.imaginary + [f imaginary])];
    }
    return result;
}

@end
