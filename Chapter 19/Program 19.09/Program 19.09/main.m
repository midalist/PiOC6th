//
//  main.m
//  Program 19.09
//
//  Created by Michał Listowski on 25.08.2014.
//

#import <Foundation/Foundation.h>
#import "AddressBook.h"
#import "Foo.h"

int main(int argc, const char * argv[]) {
  
  @autoreleasepool {
    Foo *myFoo1 = [[Foo alloc] init];
    NSMutableData *dataArea;
    NSKeyedArchiver *archiver;
    AddressBook *myBook;
    
    myBook = [NSKeyedUnarchiver unarchiveObjectWithFile:@"addrbook.arch"];
    
    myFoo1.strVal = @"This is the string";
    myFoo1.intVal = 12345;
    myFoo1.floatVal = 98.6;
    
    //  Set up a data area and connect it to an NSKeyedArchiver object
    
    dataArea = [NSMutableData data];
    
    archiver = [[NSKeyedArchiver alloc] initForWritingWithMutableData:dataArea];
    
    //  Now we can begin to archive objects
    
    [archiver encodeObject:myBook forKey:@"myaddrbook"];
    [archiver encodeObject:myFoo1 forKey:@"myfoo1"];
    [archiver finishEncoding];
    
    //  Write the archived data area to file
    
    if([dataArea writeToFile:@"myArchive" atomically:YES] == NO)
      NSLog(@"Archiving failed");
  }
  return 0;
}
