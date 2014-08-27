//
//  Rectangle.m
//  Exercise 8.2
//
//  Created by Michał Listowski on 11.06.2014.
//

#import "Rectangle.h"
#import "XYPoint.h"


@implementation Rectangle{
    XYPoint *origin;
}

@synthesize width, height;

-(void) translate:(XYPoint *)pt{
    origin.x += pt.x;
    origin.y += pt.y;
}
-(void) setWidth:(float) w andHeight: (float) h{
    width = w;
    height = h;
}
-(void) setOrigin:(XYPoint *) pt{
    if (!origin)
        origin = [[XYPoint alloc] init];
    origin.x = pt.x;
    origin.y = pt.y;
}
-(float) area{
    return width * height;
}
-(float) perimetr{
    return 2 * width + 2* height;
}
-(XYPoint *) origin{
    return origin;
}
-(BOOL) containsPoint:(XYPoint *)aPoint{
    if ((aPoint.x >= origin.x && aPoint.x <= origin.x + width) && (aPoint.y >= origin.y && aPoint.y <= origin.y + width)) {
        return (BOOL)1;
    }else
        return (BOOL)0;
}
-(Rectangle *)intersect:(Rectangle *) rect{
    Rectangle *tempRect = [[Rectangle alloc]init];
    XYPoint *myPoint = [[XYPoint alloc]init];
    int howManyPoints = 0;
    
    for (float x = rect.origin.x; x <= rect.origin.x + rect.width; x++) {
        for (float y = rect.origin.y; y <= rect.origin.y + rect.height; y++) {
            [myPoint setX:x andY:y];
            if ([self containsPoint:myPoint]) {
                //  We remembered only first point in origin
                if (howManyPoints == 0) {
                    ++howManyPoints;
                    tempRect.origin = myPoint;
                }else
                    [tempRect setWidth:x - tempRect.origin.x andHeight:y - tempRect.origin.y];
            }
        }
    }
    return tempRect;
}
-(void) draw{
    for (int w = 0; w < self.width; w++) {
        printf("-");
    }
    printf("\n");
    for (int h = 0; h < self.height; h++) {
        for (int w = 0; w < self.width; w++) {
            if ((w == 0 || w == self.width-1)) {
                printf("|");
            }else
                printf(" ");
        }
        printf("\n");
    }
    for (int w = 0; w < self.width; w++) {
        printf("-");
    }
    printf("\n");
}
@end
