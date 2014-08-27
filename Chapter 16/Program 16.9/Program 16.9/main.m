//
//  main.m
//  Program 16.9
//
//  Created by Michał Listowski on 19.08.2014.
//
//  Read the contents of a file stored at a URL

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
  
  @autoreleasepool {
    NSURL *myURL = [NSURL URLWithString:@"http://classroomm.com"];
    NSString *myHomePage = [NSString stringWithContentsOfURL:myURL encoding:NSASCIIStringEncoding error:NULL];
    
    NSLog(@"%@", myHomePage);
  }
  return 0;
}
