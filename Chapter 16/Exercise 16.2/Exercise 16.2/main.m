//
//  main.m
//  Exercise 16.2
//
//  Created by Michał Listowski on 21.08.2014.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
  
  @autoreleasepool {
    NSFileManager *fm;
    NSString *directory, *search;
    BOOL isDir;
    BOOL isAnyFound = NO;
    NSProcessInfo *proc = [NSProcessInfo processInfo];
    NSArray *args = [proc arguments];
    NSString *path;
    NSDirectoryEnumerator *dirEnum;
    
    fm = [NSFileManager defaultManager];
    
    if([args count] != 3){
      NSLog(@"Usage : %@ src search", [proc processName]);
      return 1;
    }
    
    directory = args[1];
    path = [NSString stringWithString:directory];
    search = args[2];
    dirEnum = [fm enumeratorAtPath:directory];
    
    if([fm fileExistsAtPath:directory isDirectory:&isDir]){
      if(isDir == NO){
        NSLog(@"First argument isn't directory");
        return 2;
      }
    }
    
    while((directory = [dirEnum nextObject]) != nil) {
      if ( (int)[directory rangeOfString:search].length != 0) {
        NSLog(@"%@", [path stringByAppendingPathComponent:directory]);
        isAnyFound = YES;
      }
    }
    if(isAnyFound == NO)
      NSLog(@"Don't find any");
  }
  return 0;
}
