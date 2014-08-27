//
//  main.m
//  Program 15.05
//
//  Created by Michał Listowski on 22.07.2014.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
  @autoreleasepool {
    NSString *str1 = @"This is string A";
    NSString *res;
    NSRange subRange;
    
    //  Extract 3 first chars from string
    
    res = [str1 substringToIndex:3];
    NSLog(@"First 3 chars from str1: %@", res);
    
    //  Extracts chars to end of string starting at index 5
    
    res = [str1 substringFromIndex:5];
    NSLog(@"Chars from index 5 of str1: %@", res);
    
    //  Extract chars from index 8 trough 13 (6 chars)
    
    res = [[str1 substringFromIndex:8]substringToIndex:6];
    NSLog(@"Chars from index 8 trough 13: %@", res);
    
    //  An easier way to do the same thing
    
    res = [str1 substringWithRange:NSMakeRange(8, 6)];
    NSLog(@"Chars from index 8 trough 13: %@", res);
    
    //  Locate one string inside another
    
    subRange = [str1 rangeOfString:@"string A"];
    NSLog(@"String is at index %lu, length is %lu", subRange.location, subRange.length);
    
    subRange = [str1 rangeOfString:@"string B"];
    
    if(subRange.location == NSNotFound)
      NSLog(@"String not found");
    else
      NSLog(@"String is at index %lu, length is %lu", subRange.location, subRange.length);
  }
  return 0;
}
