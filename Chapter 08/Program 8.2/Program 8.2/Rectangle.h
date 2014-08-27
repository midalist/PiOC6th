//
//  Rectangle.h
//  Program 8.2
//
//  Created by Michał Listowski on 09.06.2014.
//

#import <Foundation/Foundation.h>

@interface Rectangle : NSObject

@property int width, height;

-(int) area;
-(int) perimetr;
-(void) setWidth:(int) w andHeight: (int) h;

@end
