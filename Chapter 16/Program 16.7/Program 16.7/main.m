//
//  main.m
//  Program 16.7
//
//  Created by Michał Listowski on 18.08.2014.
//
//  Some basic file handle operations
//  Assumes the existence of a file called "testfile"
//  In the current working directory

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
  
  @autoreleasepool {
    NSFileHandle *inFile, *outFile;
    NSData *buffer;
    
    //  Open the file "testfile" for reading
    
    inFile = [NSFileHandle fileHandleForReadingAtPath:@"testfile"];
    
    if(inFile == nil){
      NSLog(@"Open a testfile for reading failed");
      return 1;
    }
    
    //  Create a output file first if necessary
    
    [[NSFileManager defaultManager] createFileAtPath:@"testout" contents:nil attributes:nil];
    
    //  Now open outfile for writing
    
    outFile = [NSFileHandle fileHandleForWritingAtPath:@"testout"];
    
    if(outFile == nil){
      NSLog(@"Open of testout for writing failed");
      return 2;
    }
    
    //  Truncate the output file since it may contain data
    
    [outFile truncateFileAtOffset:0];
    
    //  Read the data from inFile and write to outFile
    
    buffer = [inFile readDataToEndOfFile];
    
    [outFile writeData:buffer];
    
    //  Close the two files
    
    [inFile closeFile];
    [outFile closeFile];
    
    //  Verify the file's contents
    
    NSLog(@"%@", [NSString stringWithContentsOfFile:@"testout" encoding:NSUTF8StringEncoding error:NULL]);
    
  }
  return 0;
}
