//
//  AddressBook.m
//  Exercise 15.02
//
//  Created by Michał Listowski on 08.08.2014.
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
-(void) removeCard: (AddressCard *) theCard{
  [book removeObjectIdenticalTo:theCard];
}
-(NSUInteger) entries{
  return [book count];
}
-(void) list{
  NSLog(@"======= Contents of %@ =======", bookName);
  [self.book enumerateObjectsUsingBlock: ^(AddressCard *theCard, NSUInteger idx, BOOL *stop) {
    NSLog(@"%-20s    %-32s", [theCard.name UTF8String], [theCard.email UTF8String]);
  }
   ];
  NSLog(@"===============================================");
}

-(AddressCard *) lookup: (NSString *) theName{
  AddressCard *tempCard = [[AddressCard alloc] init];
  for (int i = 0; i < [book count]; ++i) {
    tempCard = [book objectAtIndex:i];
    if ([[tempCard.name lowercaseString] rangeOfString:[theName lowercaseString]].length > 0)
      return tempCard;
  }
  return nil;
}
-(void) sort{
  [book sortUsingComparator:^(id obj1, id obj2){
    return [[obj1 name] compare:[obj2 name]];
  }];
}

@end
