//
//  Fraction.h
//  Exercise 7.5
//
//  Created by Michał Listowski on 08.06.2014.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

@property int numerator, denominator;

-(void) print;
-(double) convertToNum;
-(void) setTo: (int) n over: (int) d;

@end
