//
//  XYPoint.m
//  Exercise 18.2
//
//  Created by Michał Listowski on 25.08.2014.
//

#import "XYPoint.h"

@implementation XYPoint

@synthesize x, y;

-(id)copyWithZone:(NSZone *)zone {
  id point = [[[self class] allocWithZone:zone] init];
  [point setX:x andY:y];
  return point;
}

-(void) setX:(int)xVal andY:(int)yVal{
  x = xVal;
  y = yVal;
}
-(void) print {
  NSLog(@"(%i,%i)", x, y);
}

@end
