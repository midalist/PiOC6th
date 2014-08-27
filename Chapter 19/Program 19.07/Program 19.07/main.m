//
//  main.m
//  Program 19.07
//
//  Created by Michał Listowski on 25.08.2014.

//

#import <Foundation/Foundation.h>
#import "AddressBook.h"

int main(int argc, const char * argv[]) {
  AddressBook *myBook;
  @autoreleasepool {
    myBook = [NSKeyedUnarchiver unarchiveObjectWithFile:@"addrbook.arch"];
    [myBook list];
  }
  return 0;
}
