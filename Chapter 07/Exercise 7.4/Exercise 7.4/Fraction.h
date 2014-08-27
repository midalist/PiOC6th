//
//  Fraction.h
//  Exercise 7.3
//
//  Created by Michał Listowski on 08.06.2014.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

@property int numerator, denominator;

-(void) printWithReduce: (BOOL) reduce;
-(double) convertToNum;
-(void) setTo: (int) n over: (int) d;
-(Fraction *) add: (Fraction *) f;
-(Fraction *) subtract: (Fraction *) f;
-(Fraction *) multiply: (Fraction *) f;
-(Fraction *) divide: (Fraction *) f;
-(void) reduce;

@end
