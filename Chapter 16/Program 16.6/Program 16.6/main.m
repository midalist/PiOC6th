//
//  main.m
//  Program 16.6
//
//  Created by Michał Listowski on 17.08.2014.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
  
  @autoreleasepool {
    NSFileManager *fm;
    NSString *source, *dest;
    BOOL isDir;
    NSProcessInfo *proc = [NSProcessInfo processInfo];
    NSArray *args = [proc arguments];
    
    fm = [NSFileManager defaultManager];
    
    //  Check for two arguments on the command line
    
    if([args count] != 3){
      NSLog(@"Usage : %@ src dest", [proc processName]);
      return 1;
    }
    
    source = args[1];
    dest = args[2];
    
    //  Make sure the source file can be read
    
    if([fm isReadableFileAtPath:source] == NO){
      NSLog(@"Can't read %@", source);
      return 2;
    }
    
    //  See if the destination file is a directory
    //  If it is, add the source to the end of the destination
    
    if([fm fileExistsAtPath:dest isDirectory:&isDir]){
      if(isDir == YES)
        dest = [dest stringByAppendingPathComponent:[source lastPathComponent]];
    }
    
    //  Remove the destination file if it already exist
    
    [fm removeItemAtPath:dest error:NULL];
    
    //  OK time to perform the copy
    
    if([fm copyItemAtPath:source toPath:dest error:NULL] == NO){
      NSLog(@"Copy failed");
      return 3;
    }
    
    NSLog(@"Copy of %@ to %@ succeeded", source, dest);
    
    
  }
  return 0;
}
