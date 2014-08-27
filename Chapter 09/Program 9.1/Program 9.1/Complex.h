//
//  Complex.h
//  Program
//
//  Created by Michał Listowski on 12.06.2014.
//

#import <Foundation/Foundation.h>

@interface Complex : NSObject

@property double real, imaginary;

-(void) print;
-(void) setReal:(double)a andImaginary:(double)b;
-(Complex *) add: (Complex *) f;

@end
