//
//  Square.h
//  Exercise 10.2
//
//  Created by Michał Listowski on 24.06.2014.
//

#import "Rectangle.h"

@interface Square : Rectangle

-(void) setSide:(int) s;
-(int) side;
-(id) initWithSide:(int) side;

@end
