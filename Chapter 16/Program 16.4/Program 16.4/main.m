//
//  main.m
//  Program 16.4
//
//  Created by Michał Listowski on 15.08.2014.
//

#import <Foundation/Foundation.h>

//  Enumerate the contents of a directory

int main(int argc, const char * argv[])
{
  
  @autoreleasepool {
    NSString *path;
    NSFileManager *fm;
    NSDirectoryEnumerator *dirEnum;
    NSArray *dirArray;
    BOOL flag;
    
    //  Need to create an instance of the file manager
    
    fm = [NSFileManager defaultManager];
    
    //  Get current working directory path
    
    path = [fm currentDirectoryPath];
    
    //  Enumerate the directory
    
    dirEnum = [fm enumeratorAtPath:path];
    
    NSLog(@"Contents of %@", path);
    
    while((path = [dirEnum nextObject]) != nil){
      NSLog(@"%@", path);
      
      [fm fileExistsAtPath:path isDirectory:&flag];
      
      if(flag == YES)
        [dirEnum skipDescendants];
    }
    
    
    //  Another way to enumerate a directory
    
    dirArray = [fm contentsOfDirectoryAtPath:[fm currentDirectoryPath] error:NULL];
    
    NSLog(@"Contents using contentsOfDirectoryAtPath:error:");
    
    NSLog(@"%@", dirArray);
  }
  return 0;
}
