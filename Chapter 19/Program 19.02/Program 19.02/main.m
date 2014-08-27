//
//  main.m
//  Program 19.02
//
//  Created by Michał Listowski on 25.08.2014.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  
  @autoreleasepool {
    NSDictionary *glossary;
    
    glossary = [NSDictionary dictionaryWithContentsOfFile:@"glossary"];
    
    for(NSString *key in glossary)
      NSLog(@"%@ : %@", key, glossary[key]);
  }
  return 0;
}
