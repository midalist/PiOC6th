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
    NSLog(@"\n%-20s    %-32s\n%-20s    %-20s\n%-20s    %-20s", [theCard.name UTF8String], [theCard.email UTF8String], [theCard.address UTF8String], [theCard.city UTF8String], [theCard.country UTF8String], [theCard.phoneNumber UTF8String]);
  }
   ];
  NSLog(@"===============================================");
}

-(NSArray *) lookup: (NSString *) theName{
  AddressCard *tempCard;
  NSMutableArray *tempArray = [[NSMutableArray alloc] init];
  for (int i = 0; i < [book count]; ++i) {
    tempCard = [book objectAtIndex:i];
    if ([[tempCard.name lowercaseString] rangeOfString:[theName lowercaseString]].length > 0)
      [tempArray addObject:tempCard];
    else if ([[tempCard.email lowercaseString] rangeOfString:[theName lowercaseString]].length > 0)
      [tempArray addObject:tempCard];
    else if ([[tempCard.address lowercaseString] rangeOfString:[theName lowercaseString]].length > 0)
      [tempArray addObject:tempCard];
    else if ([[tempCard.city lowercaseString] rangeOfString:[theName lowercaseString]].length > 0)
      [tempArray addObject:tempCard];
    else if ([[tempCard.country lowercaseString] rangeOfString:[theName lowercaseString]].length > 0)
      [tempArray addObject:tempCard];
    else if ([[tempCard.phoneNumber lowercaseString] rangeOfString:[theName lowercaseString]].length > 0)
      [tempArray addObject:tempCard];
  }
  if([tempArray count] > 0)
    return tempArray;
  else
    return nil;
}
-(void) sort{
  [book sortUsingComparator:^(id obj1, id obj2){
    return [[obj1 name] compare:[obj2 name]];
  }];
}

@end
