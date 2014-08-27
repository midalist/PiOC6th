//
//  main.m
//  Program 15.18b
//
//  Created by Michał Listowski on 05.08.2014.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
  
  @autoreleasepool {
    NSDictionary *glossary = [NSDictionary dictionaryWithObjectsAndKeys:
            @"A class defined so other classes can inherit from it", @"abstract class",
            @"To implement all the methods defined in a protocol", @"adopt",
            @"Storing a object for later use", @"archiving",
            nil
            ];
    
    NSArray *keys = [glossary allKeys];
    
    keys = [keys sortedArrayUsingComparator:^(id obj1, id obj2){
      return [obj1 compare:obj2];
    }];
    
    //  Print all key-value pairs from the dictionary
    
    for (NSString *aState in keys) {
      NSLog(@"State: %@ Capital: %@", aState, glossary[aState]);
    }
  }
  return 0;
}
