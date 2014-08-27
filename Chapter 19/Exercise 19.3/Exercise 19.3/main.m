//
//  main.m
//  Exercise 19.3
//
//  Created by Michał Listowski on 26.08.2014.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  
  @autoreleasepool {
    NSDictionary *glossary;
    
    glossary = [NSDictionary dictionaryWithContentsOfFile:@"/Library/Preferences/com.apple.Bluetooth.plist"];
    
    for(NSString *key in glossary)
      NSLog(@"%@ : %@", key, glossary[key]);
  }
  return 0;
}
