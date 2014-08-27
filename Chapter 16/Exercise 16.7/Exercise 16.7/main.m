//
//  main.m
//  Exercise 16.7
//
//  Created by Michał Listowski on 25.08.2014.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
  
  @autoreleasepool {
    NSFileHandle *fh, *fhOut;
    NSData *buffer;
    
    fh = [NSFileHandle fileHandleForReadingAtPath:@"testfile.txt"];
    
    if(fh == nil){
      NSLog(@"Error");
      return 1;
    }
    buffer = [fh readDataOfLength:128];
    
    [fh closeFile];
    
    fhOut = [NSFileHandle fileHandleWithStandardOutput];
    
    [fhOut writeData:buffer];
    [fhOut closeFile];
    
  }
  return 0;
}
