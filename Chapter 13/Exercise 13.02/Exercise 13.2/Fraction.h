//
//  Fraction.h
//  Exercise 13.2
//
//  Created by Michał Listowski on 06.07.2014.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

@property int numerator, denominator, addCounter;

+(Fraction *) allocF;
+(int) count;

-(void) print;
-(double) convertToNum;
-(void) setTo: (int) n over: (int) d;
-(Fraction *) add: (Fraction *) f;
-(id) addId: (id) f;

-(instancetype) initWith:(int) n over:(int) d;

@end

@interface Fraction ()
-(void) reduce;
@end
