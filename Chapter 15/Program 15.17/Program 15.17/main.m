//
//  main.m
//  Program 15.17
//
//  Created by Michał Listowski on 03.08.2014.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
  
  @autoreleasepool {
    NSMutableDictionary *glossary = [[NSMutableDictionary alloc] init];
    
    //  Store three entries in the glossary
    
    glossary[@"abstract class"] = @"A class defined so other classes can inherit from it";
    glossary[@"adopt"] = @"To implement all the methods defined in a protocol";
    glossary[@"archiving"] = @"Storing a object for later use";
    
    //  Retrieve and display them
    
    NSLog(@"abstract class: %@", glossary[@"abstract class"]);
    NSLog(@"adopt: %@", glossary[@"adopt"]);
    NSLog(@"archiving: %@", glossary[@"archiving"]);
    
    
  }
  return 0;
}
