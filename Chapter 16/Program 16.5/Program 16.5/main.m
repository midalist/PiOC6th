//
//  main.m
//  Program 16.5
//
//  Created by Michał Listowski on 16.08.2014.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    NSString *fName = @"path.m";
    NSFileManager *fm;
    NSString *path, *tempDir, *extension, *homeDir, *fullPath;
    NSArray *components;
    
    fm = [NSFileManager defaultManager];
    
    //  Get the temporary working directory
    
    tempDir = NSTemporaryDirectory();
    
    NSLog(@"Temporary Directory is %@", tempDir);
    
    //  Extract the base directory from current directory
    
    path = [fm currentDirectoryPath];
    
    NSLog(@"Base dir is %@", [path lastPathComponent]);
    
    //  Create a full path to the file fName in current directory
    
    fullPath = [path stringByAppendingPathComponent:fName];
    NSLog(@"Full path to %@ is %@", fName, fullPath);
    
    //  Get the file name extension
    
    extension = [fullPath pathExtension];
    NSLog(@"extension for %@ is %@", fullPath, extension);
    
    //  Get user's home directory
    
    homeDir = NSHomeDirectory();
    NSLog(@"Your home directory is %@", homeDir);
    
    //  Divide a path into its components
    
    components = [homeDir pathComponents];
    
    for(path in components)
      NSLog(@"%@", path);
  }
  return 0;
}
