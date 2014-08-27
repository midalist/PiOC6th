//
//  Square.m
//  Program 9.3
//
//  Created by Michał Listowski on 14.06.2014.
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
