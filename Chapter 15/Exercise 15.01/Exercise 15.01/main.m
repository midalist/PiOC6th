//
//  main.m
//  Exercise 15.01
//
//  Created by Michał Listowski on 07.08.2014.
//

#import <Foundation/Foundation.h>
#import "NSDate+ElapsedDays.h"

int main(int argc, const char * argv[])
{
  @autoreleasepool {
    NSDate *start = [NSDate dateWithNaturalLanguageString:@"05/05/2013"];
    NSDate *finish = [NSDate dateWithNaturalLanguageString:@"05/08/2013"];
    
    NSLog(@"%lu", [start elapsedDays:finish]);
    NSLog(@"%lu", [start elapsedDays:[NSDate date]]);
    
    
  }
  return 0;
}
