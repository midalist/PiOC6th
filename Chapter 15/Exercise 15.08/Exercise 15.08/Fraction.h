//
//  Fraction.h
//  Exercise 15.07
//
//  Created by Michał Listowski on 11.08.2014.
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
-(NSString *) description;

@end

@interface Fraction ()
-(void) reduce;
@end
