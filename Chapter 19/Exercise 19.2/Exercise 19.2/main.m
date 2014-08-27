//
//  main.m
//  Exercise 19.2
//
//  Created by Michał Listowski on 26.08.2014.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  
  @autoreleasepool {
    NSMutableArray *primeArray;
    NSMutableData *dataArea;
    NSKeyedUnarchiver *unArchiver;
    
    dataArea = [NSMutableData dataWithContentsOfFile:@"primes.pl"];
    unArchiver = [[NSKeyedUnarchiver alloc] initForReadingWithData:dataArea];
    
    primeArray = [unArchiver decodeObjectForKey:@"primes"];
    
    for (int i = 0; i < [primeArray count]; ++i) {
      NSLog(@"%li", [[primeArray objectAtIndex:(NSUInteger) i] longValue]);
    }
    
  }
  return 0;
}
