//
//  main.m
//  Exercise 16.8
//
//  Created by Michał Listowski on 25.08.2014.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
  
  @autoreleasepool {
    NSURL *url = [NSURL URLWithString:@"http://bit.ly/aycNwd"];
    NSDictionary *dict = [NSDictionary dictionaryWithContentsOfURL:url];
    NSLog(@"%@", dict);
  }
  return 0;
}
