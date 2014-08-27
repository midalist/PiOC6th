//
//  main.m
//  Program 18.2
//
//  Created by Michał Listowski on 25.08.2014.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  
  @autoreleasepool {
    NSMutableArray *dataArray = [NSMutableArray arrayWithObjects:
                                 [NSMutableString stringWithString:@"One"],
                                 [NSMutableString stringWithString:@"Two"],
                                 [NSMutableString stringWithString:@"Three"],
                                 nil
                                 ];
    NSMutableArray *dataArray2;
    NSMutableString *mStr;
    
    NSLog(@"dataArray: ");
    for (NSString *elem in dataArray)
      NSLog(@"     %@", elem);
    
    //  Make copy then change one of the strings
    
    dataArray2 = [dataArray mutableCopy];
    mStr = dataArray[0];
    [mStr appendString:@"One"];
    
    
    NSLog(@"dataArray: ");
    for (NSString *elem in dataArray)
      NSLog(@"     %@", elem);
    
    NSLog(@"dataArray2: ");
    for (NSString *elem in dataArray2)
      NSLog(@"     %@", elem);
    
  }
  return 0;
}
