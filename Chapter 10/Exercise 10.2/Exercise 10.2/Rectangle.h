//
//  Rectangle.h
//  Exercise 10.2
//
//  Created by Michał Listowski on 24.06.2014.
//

#import <Foundation/Foundation.h>

@class XYPoint;

@interface Rectangle : NSObject

@property int width, height;

-(XYPoint *) origin;
-(void) setOrigin:(XYPoint *) pt;
-(void) setWidth:(int) w andHeight: (int) h;
-(int) area;
-(int) perimetr;
-(id) initWithWidth:(int) w andHeight:(int) h;


@end
