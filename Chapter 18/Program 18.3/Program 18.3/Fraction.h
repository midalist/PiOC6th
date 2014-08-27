//
//  Fraction.h
//  Program 18.3
//
//  Created by Michał Listowski on 25.08.2014.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject <NSCopying>

@property int numerator, denominator;

-(void) print;
-(void) setTo: (int) n over: (int) d;

-(instancetype) initWith:(int) n over:(int) d;

@end
