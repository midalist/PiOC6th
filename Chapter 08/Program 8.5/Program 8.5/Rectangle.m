//
//  Rectangle.m
//  Program 8.2
//
//  Created by Michał Listowski on 09.06.2014.
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
    origin = pt;
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
