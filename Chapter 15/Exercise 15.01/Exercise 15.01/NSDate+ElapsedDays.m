//
//  NSDate+ElapsedDays.m
//  Exercise 15.01
//
//  Created by Michał Listowski on 07.08.2014.
//

#import "NSDate+ElapsedDays.h"

#define SECINDAY (60 * 60 * 24)

@implementation NSDate (ElapsedDays)

-(unsigned long) elapsedDays: (NSDate *) theData{
  return (unsigned long)[theData timeIntervalSinceDate: self] / SECINDAY;
}

@end
