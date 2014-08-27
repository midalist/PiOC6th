//
//  Square.m
//  Progam 8.3
//
//  Created by Michał Listowski on 10.06.2014.
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
