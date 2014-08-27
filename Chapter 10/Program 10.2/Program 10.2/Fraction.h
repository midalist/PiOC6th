//
//  Fraction.h
//  Exercise 9.2
//
//  Created by Michał Listowski on 18.06.2014.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

@property int numerator, denominator;

-(void) print;
-(double) convertToNum;
-(void) setTo: (int) n over: (int) d;
-(Fraction *) add: (Fraction *) f;
-(id) addId: (id) f;
-(void) reduce;
-(instancetype) initWith:(int) n over:(int) d;

+(Fraction *) allocF;
+(int) count;

@end
