//
//  Circle.h
//  Exercise 8.5
//
//  Created by Michał Listowski on 11.06.2014.
//

#import "GraphicObject.h"

@interface Circle : GraphicObject

@property float radius;

-(float) circumference;
-(float) area;

@end
