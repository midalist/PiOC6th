//
//  Rectangle.m
//  Exercise 8.2
//
//  Created by Michał Listowski on 11.06.2014.
//

#import "Rectangle.h"
#import "XYPoint.h"


@implementation Rectangle{
    XYPoint *origin;
}

@synthesize width, height;

-(void) translate:(XYPoint *)pt{
    origin.x += pt.x;
    origin.y += pt.y;
}
-(void) setWidth:(float) w andHeight: (float) h{
    width = w;
    height = h;
}
-(void) setOrigin:(XYPoint *) pt{
    if (!origin)
        origin = [[XYPoint alloc] init];
    origin.x = pt.x;
    origin.y = pt.y;
}
-(float) area{
    return width * height;
}
-(float) perimetr{
    return 2 * width + 2* height;
}
-(XYPoint *) origin{
    return origin;
}
-(BOOL) containsPoint:(XYPoint *)aPoint{
    if ((aPoint.x >= origin.x && aPoint.x <= origin.x + width) || (aPoint.y >= origin.y && aPoint.y <= origin.y + width)) {
        return (BOOL)1;
    }else
        return (BOOL)0;
}

@end
