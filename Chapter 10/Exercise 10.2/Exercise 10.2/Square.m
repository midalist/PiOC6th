//
//  Square.m
//  Exercise 10.2
//
//  Created by Michał Listowski on 24.06.2014.
//

#import "Square.h"

@implementation Square

-(id) initWithSide:(int) side{
    self = [super init];
    if (self)
        [self setSide:side];
    return self;
}
-(void) setSide:(int) s{
    [self setWidth:s andHeight:s];
}
-(int) side{
    return self.width;
}

@end
