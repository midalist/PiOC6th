//
//  Complex.h
//  Exercise 9.1
//
//  Created by Michał Listowski on 17.06.2014.
//

#import <Foundation/Foundation.h>

@interface Complex : NSObject

@property double real, imaginary;

-(void) print;
-(void) setReal:(double)a andImaginary:(double)b;
-(Complex *) add: (Complex *) f;

@end
