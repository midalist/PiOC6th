//
//  AddressBook.m
//  Program 15.12
//
//  Created by Michał Listowski on 29.07.2014.
//

#import "AddressBook.h"

@implementation AddressBook

@synthesize bookName, book;

//  Set up the AddressBook's nameand an empty book

-(instancetype) initWithName: (NSString *) name{
  self = [super init];
  if (self) {
    bookName = [NSString stringWithString:name];
    book = [NSMutableArray array];
  }
  return self;
}
-(instancetype) init{
  return [self initWithName:@"NoName"];
}
-(void) addCard: (AddressCard *) theCard{
  [book addObject:theCard];
}
-(NSUInteger) entries{
  return [book count];
}
-(void) list{
  NSLog(@"======= Contents of %@ =======", bookName);
  for (AddressCard *theCard in book)
    NSLog(@"%-20s    %-32s", [theCard.name UTF8String], [theCard.email UTF8String]);
  
  NSLog(@"===============================================");
}

@end
