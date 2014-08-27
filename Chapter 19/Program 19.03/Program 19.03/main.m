//
//  main.m
//  Program 19.03
//
//  Created by Michał Listowski on 25.08.2014.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  
  @autoreleasepool {
    NSDictionary *glossary = @{@"abstract class": @"A class defined so other classes can inherit from it.",
                               @"adopt": @"Tm implement all the methods defined in protocol",
                               @"archiving": @"Storing an object for later use."};
    
    [NSKeyedArchiver archiveRootObject:glossary toFile:@"glossary.archive"];
  }
  return 0;
}
