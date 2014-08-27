//
//  Fraction+MathOps.h
//  Exercise 11.3
//
//  Created by Michał Listowski on 27.06.2014.
//

#import "Fraction.h"

@interface Fraction (MathOps)

-(Fraction *) mul:(Fraction *)f;
-(Fraction *) sub:(Fraction *)f;
-(Fraction *) div:(Fraction *)f;
-(Fraction *) invert:(Fraction *)f;

-(int) compare:(Fraction *)f;

@end
