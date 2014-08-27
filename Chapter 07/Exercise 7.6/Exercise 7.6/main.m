//
//  main.m
//  Exercise 7.6
//
//  Created by Michał Listowski on 08.06.2014.
//

#import <Foundation/Foundation.h>

//---- @interface section ----

@interface Complex : NSObject

-(void) setReal: (double) a;
-(void) setImaginary: (double) b;
-(void) print;
-(double) real;
-(double) imaginary;
-(Complex *) add: (Complex *) complexNum;

@end

//---- @implementation section ----

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


//---- Program Section ----

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        Complex *aComplex = [[Complex alloc] init];
        Complex *bComplex = [[Complex alloc] init];
        
        [aComplex setReal:5.3];
        [aComplex setImaginary:7];
        [aComplex print];
        
        NSLog(@"Value of real party is %.2f and imaginary part is %.2fi", [aComplex real], [aComplex imaginary]);
        
        bComplex.real = 2.7;
        bComplex.imaginary = 8;
        [bComplex print];
        
        aComplex = [aComplex add:bComplex];
        [aComplex print];
    }
    return 0;
}

