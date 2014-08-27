//
//  main.m
//  Program 15.10
//
//  Created by Michał Listowski on 27.07.2014.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"

int main(int argc, const char * argv[])
{
  
  @autoreleasepool {
    NSString *aName = @"Julia Kochan";
    NSString *aEmail = @"jewls337@axlc.com";
    AddressCard *card1 = [[AddressCard alloc] init];
    
    [card1 setName:aName];
    [card1 setEmail:aEmail];
    [card1 print];
    
  }
  return 0;
}
