//
//  main.m
//  Program 16.1
//
//  Created by Michał Listowski on 12.08.2014.
//

//  Basic File Operations
//  Assumes the existence of a file called "testfile"
//  in the current directory

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
  
  @autoreleasepool {
    NSString *fName = @"testfile";
    NSFileManager *fm;
    NSDictionary *attr;
    
    //  Need to create an instance of the file manager
    
    fm = [NSFileManager defaultManager];
    
    //  Let's make sure our test file exist first
    
    if ([fm fileExistsAtPath:fName] == NO){
      NSLog(@"File dosn't exist!");
      return 1;
    }
    
    //  Now let's make a copy
    
    if ([fm copyItemAtPath:fName toPath:@"newfile" error:NULL] == NO){
      NSLog(@"File copy failed!");
      return 2;
    }
    
    //  Now let's test to see if the two files are equal
    
    if ([fm contentsEqualAtPath:fName andPath:@"newfile"] == NO){
      NSLog(@"Files are Not Equal");
      return 3;
    }
    
    //  Now let's rename copy
    
    if ([fm moveItemAtPath:@"newfile" toPath:@"newfile2" error:NULL] == NO){
      NSLog(@"File rename Failed!");
      return 4;
    }
    
    //  Get the size of the newfile2
    
    if ((attr = [fm attributesOfItemAtPath:@"newfile2" error:NULL]) == nil){
      NSLog(@"Couldn't get file attributes!");
      return 5;
    }
    
    NSLog(@"File sizes is %llu bytes", [[attr objectForKey:NSFileSize] unsignedLongLongValue]);
    
    //  And finally, let's delete the original file
    
    if ([fm removeItemAtPath:fName error:NULL] == NO){
      NSLog(@"File removal failed!");
      return 6;
    }
    
    NSLog(@"All operations were successful");
    
    //  Display the contents of the newly created file
    
    NSLog(@"%@", [NSString stringWithContentsOfFile:@"newfile2" encoding:NSUTF8StringEncoding error:NULL]);
    
    
    
  }
  return 0;
}
