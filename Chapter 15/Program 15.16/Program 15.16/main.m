//
//  main.m
//  Program 15.16
//
//  Created by Michał Listowski on 02.08.2014.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
  
  @autoreleasepool {
    NSMutableDictionary *glossary = [[NSMutableDictionary alloc] init];
    
    //  Store three entries in the glossary
    
    [glossary setObject:@"A class defined so other classes can inherit from it" forKey:@"abstract class"];
    [glossary setObject:@"To implement all the methods defined in a protocol" forKey:@"adopt"];
    [glossary setObject:@"Storing a object for later use" forKey:@"archiving"];
    
    //  Retrieve and display them
    
    NSLog(@"abstract class: %@", [glossary objectForKey:@"abstract class"]);
    NSLog(@"adopt: %@", [glossary objectForKey:@"adopt"]);
    NSLog(@"archiving: %@", [glossary objectForKey:@"archiving"]);
    
    
  }
  return 0;
}
