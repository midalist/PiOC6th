//
//  main.m
//  Exercise 13.5
//
//  Created by Michał Listowski on 12.07.2014.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
  @autoreleasepool {
    typedef struct date {
      int month;
      int day;
      int year;
    } Date;
    
    Date today;
    today.month = 6;
    today.day = 5;
    today.year = 2014;
    
    NSLog(@"%i/%i/%i", today.month, today.day, today.year);
  }
  return 0;
}
