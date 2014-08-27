//
//  main.m
//  Exercise 15.10
//
//  Created by Michał Listowski on 11.08.2014.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
  
  @autoreleasepool {
    NSNumber *a1 = [NSNumber numberWithInteger:10];
    NSNumber *a2 = [NSNumber numberWithInteger:5];
    NSNumber *a3 = [NSNumber numberWithInteger:8];
    NSNumber *a4 = [NSNumber numberWithInteger:10];
    NSNumber *a5 = [NSNumber numberWithInteger:1];
    NSNumber *a6 = [NSNumber numberWithInteger:5];
    NSNumber *a7 = [NSNumber numberWithInteger:3];
    NSNumber *a8 = [NSNumber numberWithInteger:10];
    NSArray *numbers = [NSArray arrayWithObjects:a1, a2, a3, a4, a5, a6, a7, a8, nil];
    
    NSCountedSet *countedOfNumbers = [[NSCountedSet alloc] initWithArray:numbers];
    
    
    NSLog(@"%@", countedOfNumbers);
    
    
  }
  return 0;
}
