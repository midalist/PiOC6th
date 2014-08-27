//
//  Fraction.h
//  Exercise 10.3
//
//  Created by Michał Listowski on 24.06.2014.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

@property int numerator, denominator, addCounter;

+(Fraction *) allocF;
+(int) count;

-(void) print;
-(double) convertToNum;
-(void) setTo: (int) n over: (int) d;
-(id) addId: (id) f;
-(void) reduce;
-(instancetype) initWith:(int) n over:(int) d;

@end
