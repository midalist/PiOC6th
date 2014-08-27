//
//  Triangle.m
//  Exercise 8.5
//
//  Created by Michał Listowski on 11.06.2014.
//

#import "Triangle.h"

@implementation Triangle

@synthesize aVal, bVal, cVal;

-(float) perimeter{
    return aVal + bVal + cVal;
}
-(float) area{
    return sqrtf((self.perimeter / 2)*((self.perimeter / 2) - aVal)*((self.perimeter / 2) - bVal) * ((self.perimeter / 2) - cVal));
}
-(void) setAVal:(float)a BVal:(float)b CVal:(float)c{
    aVal = a;
    bVal = b;
    cVal = c;
}
@end
