//
//  Fraction.m
//  Exercise 10.3
//
//  Created by Michał Listowski on 24.06.2014.
//

#import "Fraction.h"

static int gCounter;

@implementation Fraction

@synthesize numerator, denominator, addCounter;

+(Fraction *) allocF{
    extern int gCounter;
    ++gCounter;
    return [Fraction alloc];
}
+(int) count{
    extern int gCounter;
    return gCounter;
}


-(instancetype) initWith:(int) n over:(int) d{
    self = [super init];
    if (self)
        [self setTo:n over:d];
    return self;
}
-(instancetype) init{
    return [self initWith:0 over:0];
}
-(void) print{
    NSLog(@"%i/%i", numerator, denominator);
}
-(double) convertToNum{
    if (denominator != 0)
        return (double)numerator / denominator;
    else
        return NAN;
}
-(void) setTo: (int) n over: (int) d{
    numerator = n;
    denominator = d;
}

-(id) addId: (id) f{
    id result = [[Fraction alloc]init];
    
    if ([f isMemberOfClass:[Fraction class]]) {
        [result setNumerator:(self.numerator + [f numerator] + self.denominator + [f denominator])];
        [result setDenominator:self.denominator * [f denominator]];
    }
    
    return result;
}

-(void) reduce{
    int u = numerator;
    int v = denominator;
    int temp;
    
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    
    numerator /= u;
    denominator /= u;
}

@end
