//
//  main.m
//  Exercise 8.5
//
//  Created by Michał Listowski on 11.06.2014.
//

#import "Square.h"
#import "XYPoint.h"
#import "Circle.h"
#import "Triangle.h"


int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        Rectangle *firstRect = [[Rectangle alloc] init];
        Rectangle *secondRect = [[Rectangle alloc] init];
        Rectangle *resultRect = [[Rectangle alloc] init];
        XYPoint *rectPoint = [[XYPoint alloc]init];
        
        [firstRect setWidth:250 andHeight:75];
        rectPoint.x = 200;
        rectPoint.y = 420;
        firstRect.origin = rectPoint;
        [secondRect setWidth:100 andHeight:180];
        rectPoint.x = 400;
        rectPoint.y = 300;
        secondRect.origin = rectPoint;
        rectPoint.x =450;
        rectPoint.y =420;
        
        
        resultRect = [firstRect intersect:secondRect];
        NSLog(@"Origin is (%g,%g), width is %g and haight is %g", resultRect.origin.x, resultRect.origin.y, resultRect.width, resultRect.height);
    }
    return 0;
}

