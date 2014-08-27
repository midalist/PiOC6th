//
//  AddressBook.m
//  Exercise 15.02
//
//  Created by Michał Listowski on 08.08.2014.
//

#import "AddressBook.h"

@implementation AddressBook

@synthesize bookName, book;

//  Set up the AddressBook's name and an empty book

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
  //  Now we make copy of information inside of copyTheCard and put this copy inside AddressBook
  AddressCard *copyTheCard = [[AddressCard alloc] init];
  copyTheCard.name = [NSString stringWithString:theCard.name];
  copyTheCard.email = [NSString stringWithString:theCard.email];
  copyTheCard.address = [NSString stringWithString:theCard.address];
  copyTheCard.city = [NSString stringWithString:theCard.city];
  copyTheCard.country = [NSString stringWithString:theCard.country];
  copyTheCard.phoneNumber = [NSString stringWithString:theCard.phoneNumber];
  [book addObject:copyTheCard];
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
-(BOOL) removeName: (NSString *) theName{
  NSArray *tempArray = [self lookup:theName];
  AddressCard *tempCard = [tempArray objectAtIndex:0];
  [tempCard print];
  if ([tempArray count] == 1) {
    AddressCard *tempCard = [tempArray objectAtIndex:0];
    [self removeCard:tempCard];
    return YES;
  }
  else
    return NO;
}
-(void) sort{
  [book sortUsingComparator:^(id obj1, id obj2){
    return [[obj1 name] compare:[obj2 name]];
  }];
}

@end
