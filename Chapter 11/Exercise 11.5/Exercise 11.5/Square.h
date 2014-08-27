//
//  Square.h
//  Exercise 11.5
//
//  Created by Michał Listowski on 27.06.2014.
//

#import "Rectangle.h"

@interface Square : Rectangle

-(instancetype) initWithSide:(int) side;
-(void) setSide:(int) s;
-(int) side;
-(int) area;
-(int) perimetr;

@end
