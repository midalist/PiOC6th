//
//  GraphicObject.h
//  Exercise 8.5
//
//  Created by Michał Listowski on 11.06.2014.
//

#import <Foundation/Foundation.h>

@interface GraphicObject : NSObject

@property int fillColor;  //  32-bit color
@property BOOL filled;    //  Is the object filled?
@property int lineColor;  //  32-bit line color

@end
