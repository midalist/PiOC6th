//
//  Rectangle.m
//  Program 9.3
//
//  Created by Michał Listowski on 14.06.2014.
//

#import "Rectangle.h"
#import "XYPoint.h"

@implementation Rectangle{
    XYPoint *origin;
}

@synthesize width, height;

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
