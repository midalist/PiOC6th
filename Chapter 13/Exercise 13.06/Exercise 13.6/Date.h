//
//  Date.h
//  Exercise 13.6
//
//  Created by Michał Listowski on 13.07.2014.
//

#import <Foundation/Foundation.h>

#define IS_YEAR_LEAP(y) y % 4 == 0 && y % 100 != 0 || y % 400 == 0

@interface Date : NSObject

@property int month, day, year;

-(void) dateUpdate;

@end
