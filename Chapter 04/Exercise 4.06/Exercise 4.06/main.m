//
//  main.m
//  Exercise 4.06
//
//  Created by Michał Listowski on 02.06.2014.
//

#import <Foundation/Foundation.h>

//---- @interface section ----

@interface Complex : NSObject

-(void) setReal: (double) a;
-(void) setImaginary: (double) b;
-(void) print;
-(double) real;
-(double) imaginary;

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

@end


//---- Program Section ----

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        Complex *myComplex = [[Complex alloc] init];
        
        [myComplex setReal:5];
        [myComplex setImaginary:7];
        [myComplex print];
        
        NSLog(@"Value of real party is %.2f and imaginary part is %.2fi", [myComplex real], [myComplex imaginary]);
    }
    return 0;
}

