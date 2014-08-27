//
//  Square.m
//  Exercise 8.2
//
//  Created by Michał Listowski on 11.06.2014.
//

#import "Square.h"

@implementation Square


-(void) setSide:(int) s{
    [self setWidth:s andHeight:s];
}
-(int) side{
    return self.width;
}

@end
