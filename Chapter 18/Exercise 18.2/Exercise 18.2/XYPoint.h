//
//  XYPoint.h
//  Exercise 18.2
//
//  Created by Michał Listowski on 25.08.2014.
//

#import <Foundation/Foundation.h>

@interface XYPoint : NSObject <NSCopying>

@property int x, y;

-(void) setX:(int)xVal andY:(int)yVal;
-(void) print;

@end
