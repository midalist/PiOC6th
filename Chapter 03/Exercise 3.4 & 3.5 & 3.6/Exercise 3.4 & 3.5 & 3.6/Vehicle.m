//
//  Vehicle.m
//  Learn_PiOc6
//
//  Created by Michał Listowski on 12.03.2014.
//

#import "Vehicle.h"

@implementation Vehicle{
    int fuel;
}

-(void) prep{
    NSLog(@"Vehicle is prepared");
}
-(void) getGas{
    NSLog(@"Gas is full");
    fuel = 1;
}
-(void) service{
    NSLog(@"Everything is repaired");
}
-(void) wash{
    NSLog(@"Is clear and shiny");
}

@end
