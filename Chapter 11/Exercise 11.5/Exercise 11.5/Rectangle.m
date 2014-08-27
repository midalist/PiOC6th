//
//  Rectangle.m
//  Exercise 10.1
//
//  Created by Michał Listowski on 23.06.2014.
//

#import "Rectangle.h"
#import "XYPoint.h"

@implementation Rectangle{
    XYPoint *origin;
}

@synthesize width, height;

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
