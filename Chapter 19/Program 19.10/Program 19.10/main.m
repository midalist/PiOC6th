//
//  main.m
//  Program 19.10
//
//  Created by Michał Listowski on 25.08.2014.
//

#import <Foundation/Foundation.h>
#import "AddressBook.h"
#import "Foo.h"

int main(int argc, const char * argv[]) {
  
  @autoreleasepool {
    Foo *myFoo1;
    NSData *dataArea;
    NSKeyedUnarchiver *unarchiver;
    AddressBook *myBook;
    
    //  Read in the archive and connect an
    //  NSKeyedUnarchiver object to it
    
    dataArea = [NSData dataWithContentsOfFile:@"myarchive"];
    
    if(!dataArea) {
      NSLog(@"Can't read bank archive file");
      return 1;
    }
    
    unarchiver = [[NSKeyedUnarchiver alloc] initForReadingWithData:dataArea];
    
    //  Decode the objects we previously stored in the archive
    
    myBook = [unarchiver decodeObjectForKey:@"myaddrbook"];
    myFoo1 = [unarchiver decodeObjectForKey:@"myfoo1"];
    
    [unarchiver finishDecoding];
    
    //  Verify that restore was successful
    
    [myBook list];
    NSLog(@"%@\n%i\n%g", myFoo1.strVal, myFoo1.intVal, myFoo1.floatVal);
    
  }
  return 0;
}
