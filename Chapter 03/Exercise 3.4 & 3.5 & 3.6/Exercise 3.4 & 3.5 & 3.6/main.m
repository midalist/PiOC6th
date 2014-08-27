//
//  main.m
//  Exercise 3.4 & 3.5 & 3.6
//
//  Created by Michał Listowski on 31.05.2014.
//

#import <Foundation/Foundation.h>
#import "Vehicle.h"
#import "Car.h"
#import "Boat.h"
#import "Motorcycle.h"

//---- Program Section ----

int main(int argc, const char * argv[])
{
  
  @autoreleasepool {
    Vehicle *myVehicle = [[Vehicle alloc] init];
    Car *myCar = [[Car alloc] init];
    Boat *myBoat = [[Boat alloc] init];
    Motorcycle *myMotorcycle = [Motorcycle new];
    
    [myVehicle prep];
    [myCar prep];
    [myBoat prep];
    [myMotorcycle prep];
    
    [myBoat getGas];
    [myCar service];
    [myVehicle getGas];
    [myMotorcycle wash];
    
    //---- Produce new car ----
    
    Car *mySecondCar = [[Car alloc] init];
    [mySecondCar prep];
    [mySecondCar getGas];
    [mySecondCar wash];
    
  }
  return 0;
}

