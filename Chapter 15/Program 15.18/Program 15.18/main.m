//
//  main.m
//  Program 15.18
//
//  Created by Michał Listowski on 04.08.2014.
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
    
    //  Print all key-value pairs from the dictionary
    
    for (NSString *key in glossary) {
      NSLog(@"%@: %@",key, [glossary objectForKey:key]);
    }
  }
  return 0;
}
