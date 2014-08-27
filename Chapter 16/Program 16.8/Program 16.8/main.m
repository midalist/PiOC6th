//
//  main.m
//  Program 16.8
//
//  Created by Michał Listowski on 19.08.2014.

//
//  Append the "fileA" to the end of "fileB"

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
  
  @autoreleasepool {
    NSFileHandle *inFile, *outFile;
    NSData *buffer;
    
    //  Open the file fileA for reading
    
    inFile = [NSFileHandle fileHandleForReadingAtPath:@"fileA"];
    
    if(inFile == nil){
      NSLog(@"Open a fileA for reading failed");
      return 1;
    }
    
    //  Open the file fileB for updating
    
    outFile = [NSFileHandle fileHandleForWritingAtPath:@"fileB"];
    
    if(outFile == nil){
      NSLog(@"Open a fileB for writing failed");
      return 2;
    }
    
    //  Seek to the end of outFile
    
    [outFile seekToEndOfFile];
    
    //  Read inFile and write its contents to outFile
    
    buffer = [inFile readDataToEndOfFile];
    [outFile writeData:buffer];
    
    //  Close the two files
    
    [inFile closeFile];
    [outFile closeFile];
    
    //  Verify its contests
    
    NSLog(@"%@", [NSString stringWithContentsOfFile:@"fileB" encoding:NSUTF8StringEncoding error:NULL]);
    
  }
  return 0;
}
