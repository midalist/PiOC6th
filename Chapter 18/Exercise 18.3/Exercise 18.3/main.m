//
//  main.m
//  Exercise 18.3
//
//  Created by Michał Listowski on 25.08.2014.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  
  @autoreleasepool {
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"1th", @"First", @"2th", @"Second", @"3th", @"Third", nil];
    NSMutableDictionary *dictCopy;
    NSMutableDictionary *dictMutCopy;
    
    dictCopy = [dict copy];
    dictMutCopy = [dict mutableCopy];
    
    NSLog(@"Original :\n%@", [dict allValues]);
    NSLog(@"Copy :\n%@", [dictCopy allValues]);
    NSLog(@"MutableCopy :\n%@", [dictMutCopy allValues]);
    
    dict = [NSMutableDictionary new];
    
    NSLog(@"Original :\n%@", [dict allValues]);
    NSLog(@"Copy :\n%@", [dictCopy allValues]);
    NSLog(@"MutableCopy :\n%@", [dictMutCopy allValues]);
    
    //[dictCopy removeObjectForKey:@"1th"]; //  Error
    [dictMutCopy removeObjectForKey:@"2th"];
    
    NSLog(@"Original :\n%@", [dict allValues]);
    NSLog(@"Copy :\n%@", [dictCopy allValues]);
    NSLog(@"MutableCopy :\n%@", [dictMutCopy allValues]);
    
    
  }
  return 0;
}
