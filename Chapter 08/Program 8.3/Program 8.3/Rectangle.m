//
//  Rectangle.m
//  Program 8.2
//
//  Created by Michał Listowski on 09.06.2014.
//

#import "Rectangle.h"

@implementation Rectangle

@synthesize width, height;

-(int) area{
    return width * height;
}
-(int) perimetr{
    return 2 * width + 2* height;
}
-(void) setWidth:(int) w andHeight: (int) h{
    width = w;
    height = h;
}
@end
