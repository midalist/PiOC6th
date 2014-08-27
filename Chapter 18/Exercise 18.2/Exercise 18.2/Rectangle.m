//
//  Rectangle.m
//  Exercise 18.2
//
//  Created by Michał Listowski on 25.08.2014.
//

#import "Rectangle.h"
#import "XYPoint.h"

@implementation Rectangle{
  XYPoint *origin;
}

@synthesize width, height;

-(id)copyWithZone:(NSZone *)zone {
  id rect = [[[self class] allocWithZone:zone] init];
  [rect setWidth:width andHeight:height];
  [rect setOrigin: [origin copy]];
  return rect;
}

-(id) initWithWidth:(int) w andHeight:(int) h{
  self = [super init];
  if (self)
    [self setWidth:w andHeight:h];
  return self;
}
-(void) setWidth:(int) w andHeight: (int) h{
  width = w;
  height = h;
}
-(void) setOrigin:(XYPoint *) pt{
  if (!origin)
    origin = [[XYPoint alloc] init];
  origin.x = pt.x;
  origin.y = pt.y;
}
-(int) area{
  return width * height;
}
-(int) perimetr{
  return 2 * width + 2* height;
}
-(XYPoint *) origin{
  return origin;
}

@end
