//
//  main.m
//  Program 18.1
//
//  Created by Michał Listowski on 25.08.2014.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  
  @autoreleasepool {
    NSMutableArray *dataArray = [NSMutableArray arrayWithObjects:@"one", @"two", @"three", @"four", nil];
    NSMutableArray *dataArray2;
    
    //  Simple Assignment
    
    dataArray2 = dataArray;
    
    [dataArray removeObjectAtIndex:0];
    
    NSLog(@"dataArray: ");
    for (NSString *elem in dataArray)
      NSLog(@"     %@", elem);
    
    NSLog(@"dataArray2: ");
    for (NSString *elem in dataArray2)
      NSLog(@"     %@", elem);
    
    //  Try to copy, then remove first element from the copy
    
    dataArray2 = [dataArray mutableCopy];
    [dataArray2 removeObjectAtIndex:0];
    
    NSLog(@"dataArray: ");
    for (NSString *elem in dataArray)
      NSLog(@"     %@", elem);
    
    NSLog(@"dataArray2: ");
    for (NSString *elem in dataArray2)
      NSLog(@"     %@", elem);
    
  }
  return 0;
}
