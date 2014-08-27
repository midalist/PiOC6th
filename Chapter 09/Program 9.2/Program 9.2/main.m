//
//  main.m
//  Program
//
//  Created by Michał Listowski on 12.06.2014.
//

#import "Fraction.h"
#import "Complex.h"


int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        id dataValue;
        Fraction *f1 = [[Fraction alloc]init];
        Complex *c1 = [[Complex alloc]init];
        
        [f1 setTo:2 over:5];
        [c1 setReal:10.0 andImaginary:2.5];
        
        //  First dataValue gets a fraction
        
        dataValue = f1;
        [dataValue print];
        
        //  Now dataValue gets a complex number
        
        dataValue = c1;
        [dataValue print];
    }
    return 0;
}

