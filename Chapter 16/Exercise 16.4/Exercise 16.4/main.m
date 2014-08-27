//
//  main.m
//  Exercise 16.4
//
//  Created by Michał Listowski on 23.08.2014.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
  
  @autoreleasepool {
    NSProcessInfo *proc = [NSProcessInfo processInfo];
    
    NSLog(@"[proc description] %@", [proc description]);
    NSLog(@"[proc arguments] %@", [proc arguments]);
    NSLog(@"[proc environment] %@", [proc environment]);
    NSLog(@"[proc processIdentifier] %i", [proc processIdentifier]);
    NSLog(@"[proc globallyUniqueString] %@", [proc globallyUniqueString]);
    NSLog(@"[proc processName] %@", [proc processName]);
    NSLog(@"[proc hostName] %@", [proc hostName]);
    NSLog(@"[proc operatingSystem] %lu", [proc operatingSystem]);
    NSLog(@"[proc operatingSystemName] %@", [proc operatingSystemName]);
    NSLog(@"[proc operatingSystemVersionString] %@", [proc operatingSystemVersionString]);
    NSLog(@"[proc physicalMemory] %llu", [proc physicalMemory]);
    NSLog(@"[proc processorCount] %lu", [proc processorCount]);
    NSLog(@"[proc activeProcessorCount] %lu", [proc activeProcessorCount]);
    NSLog(@"[proc systemUptime] %f", proc.systemUptime);
    NSLog(@"[proc hash] %u", (unsigned int)proc.hash);
    
    
  }
  return 0;
}
