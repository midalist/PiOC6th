//
//  Rectangle.h
//  Exercise 8.2
//
//  Created by Michał Listowski on 11.06.2014.
//

#import <Foundation/Foundation.h>
#import "GraphicObject.h"

@class XYPoint;

@interface Rectangle : GraphicObject

@property float width, height;

-(void) translate:(XYPoint *)pt;
-(XYPoint *) origin;
-(void) setOrigin:(XYPoint *) pt;
-(void) setWidth:(float) w andHeight: (float) h;
-(float) area;
-(float) perimetr;

@end
