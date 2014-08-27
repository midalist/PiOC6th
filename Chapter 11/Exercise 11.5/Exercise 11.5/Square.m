//
//  Square.m
//  Exercise 11.5
//
//  Created by Michał Listowski on 27.06.2014.
//

#import "Square.h"

@implementation Square{
    Rectangle *rect;
}

-(instancetype) initWithSide:(int) side{
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
-(int) area{
    return (self.width * self.height);
}
-(int) perimetr{
    return (2 * self.width + 2 * self.height);
}

@end
