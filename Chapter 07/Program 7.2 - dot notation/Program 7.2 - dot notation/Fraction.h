//
//  Fraction.h
//  Program 7.2 - dot notation
//
//  Created by Michał Listowski on 07.06.2014.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

@property int numerator, denominator;

-(void) print;
-(double) convertToNum;
-(void) setTo: (int) n over: (int) d;

@end
