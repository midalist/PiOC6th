//
//  main.m
//  Exercise 13.6
//
//  Created by Michał Listowski on 13.07.2014.
//

#import <Foundation/Foundation.h>
#import "Date.h"

int main(int argc, const char * argv[])
{
  @autoreleasepool {
    Date *myDay = [[Date alloc]init];
    
    myDay.month = 12;
    myDay.day = 30;
    myDay.year = 2014;
    
    NSLog(@"%i/%i/%i", myDay.month, myDay.day, myDay.year);
    
    [myDay dateUpdate];
    NSLog(@"%i/%i/%i", myDay.month, myDay.day, myDay.year);
    
    [myDay dateUpdate];
    NSLog(@"%.2i/%.2i/%.2i", myDay.month, myDay.day, myDay.year);
  }
  return 0;
}
