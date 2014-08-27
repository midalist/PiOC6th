//
//  Circle.m
//  Exercise 8.5
//
//  Created by Michał Listowski on 11.06.2014.
//

#import "Circle.h"

@implementation Circle

@synthesize radius;

-(float) circumference{
    return 2 * M_PI * radius;
}
-(float) area{
    return radius * M_PI * M_PI;
}

@end
