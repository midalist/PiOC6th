//
//  XYPoint.m
//  Exercise 10.1
//
//  Created by Michał Listowski on 23.06.2014.
//

#import "XYPoint.h"

@implementation XYPoint

@synthesize x, y;

-(void) setX:(int)xVal andY:(int)yVal{
    x = xVal;
    y = yVal;
}
-(void) print {
    NSLog(@"(%i,%i)", x, y);
}

@end
