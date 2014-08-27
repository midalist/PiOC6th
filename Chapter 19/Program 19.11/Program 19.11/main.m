//
//  main.m
//  Program 19.11
//
//  Created by Michał Listowski on 25.08.2014.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  
  @autoreleasepool {
    NSData *data;
    NSMutableArray *dataArray = [NSMutableArray arrayWithObjects:
                                 [NSMutableString stringWithString:@"one"],
                                 [NSMutableString stringWithString:@"two"],
                                 [NSMutableString stringWithString:@"three"],
                                 nil
                                 ];
    NSMutableArray *dataArray2;
    NSMutableString *mStr;
    
    //  Make deep copy using archiver
    
    data = [NSKeyedArchiver archivedDataWithRootObject:dataArray];
    dataArray2 = [NSKeyedUnarchiver unarchiveObjectWithData:data];
    
    mStr = dataArray2[0];
    [mStr appendString:@"ONE"];
    
    NSLog(@"dataArray");
    for (NSString *elem in dataArray)
      NSLog(@"%@", elem);
    
    NSLog(@"dataArray2");
    for (NSString *elem in dataArray2)
      NSLog(@"%@", elem);
    
    
  }
  return 0;
}
