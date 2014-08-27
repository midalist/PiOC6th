//
//  XYPoint.h
//  Exercise 9.2
//
//  Created by Michał Listowski on 18.06.2014.
//

#import <Foundation/Foundation.h>

@interface XYPoint : NSObject

@property int x, y;

-(void) setX:(int)xVal andY:(int)yVal;
-(void) print;

@end
