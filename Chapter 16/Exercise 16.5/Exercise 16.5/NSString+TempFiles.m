//
//  NSString+TempFiles.m
//  Exercise 16.5
//
//  Created by Michał Listowski on 24.08.2014.
//

#import "NSString+TempFiles.h"

@implementation NSString (TempFiles)

+(NSString *) temporaryFileName{
  NSString *tempDir = [NSString stringWithString:NSTemporaryDirectory()];
  NSString *tempName = [NSString stringWithString:[[NSProcessInfo processInfo] globallyUniqueString]];
  return [NSString stringWithString:[tempDir stringByAppendingString:tempName]];
}

@end
