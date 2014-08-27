//
//  Complex.h
//  Exercise 7.7
//
//  Created by Michał Listowski on 08.06.2014.
//

#import <Foundation/Foundation.h>

@interface Complex : NSObject

-(void) setReal: (double) a;
-(void) setImaginary: (double) b;
-(void) print;
-(double) real;
-(double) imaginary;
-(Complex *) add: (Complex *) complexNum;

@end
