//
//  main.m
//  Exercise 9.3
//
//  Created by Michał Listowski on 20.06.2014.
//

#import "Fraction.h"
#import "Complex.h"
#import "XYPoint.h"


int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        id dataValue;
        Fraction *f1 = [[Fraction alloc]init];
        Complex *c1 = [[Complex alloc]init];
        XYPoint *point = [[XYPoint alloc]init];
        
        [f1 setTo:2 over:5];
        [c1 setReal:10.0 andImaginary:2.5];
        [point setX:100 andY:200];
        
        //  First dataValue gets a fraction
        
        dataValue = f1;
        [dataValue print];
        
        //  Now dataValue gets a complex number
        
        dataValue = c1;
        [dataValue print];
        
        //  Now dataValue gets a XYPoint value
        
        dataValue = point;
        [dataValue print];
        
    }
    return 0;
}
