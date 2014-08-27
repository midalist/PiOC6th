//
//  main.m
//  Program 15.02
//
//  Created by Michał Listowski on 19.07.2014.
//

//  Make a copy of a file

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
  
  @autoreleasepool {
    NSFileManager *fm;
    NSData *fileData;
    
    fm = [NSFileManager defaultManager];
    
    //  Read the file newfile2
    
    fileData = [fm contentsAtPath:@"newfile2"];
    
    if (fileData == nil){
      NSLog(@"File read failed!");
      return 1;
    }
    
    //  Write data to newfile3
    
    if([fm createFileAtPath:@"newfile3" contents:fileData attributes:nil] == NO){
      NSLog(@"Couldn't create the copy");
      return 2;
    }
    
    NSLog(@"File copy was successful");
  }
  return 0;
}
