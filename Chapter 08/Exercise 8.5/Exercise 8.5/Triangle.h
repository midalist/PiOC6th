//
//  Triangle.h
//  Exercise 8.5
//
//  Created by Michał Listowski on 11.06.2014.
//

#import "GraphicObject.h"

@interface Triangle : GraphicObject

@property float aVal, bVal, cVal;

-(float) perimeter;
-(float) area;
-(void) setAVal:(float)a BVal:(float)b CVal:(float)c;

@end
