//
//  Complex.h
//  Exercise 9.2
//
//  Created by Michał Listowski on 18.06.2014.
//

#import <Foundation/Foundation.h>

@interface Complex : NSObject

@property double real, imaginary;

-(void) print;
-(void) setReal:(double)a andImaginary:(double)b;
-(Complex *) add: (Complex *) f;

@end
