//
//  main.m
//  Exercise 19.1
//
//  Created by Michał Listowski on 26.08.2014.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  
  @autoreleasepool {
    NSMutableArray *primeArray = [[NSMutableArray alloc] init];
    NSMutableData *dataArea;
    NSKeyedArchiver *archiver;
    
    int p, d;
    BOOL isPrime;
    for (p = 2; p <= 50; ++p) {
      isPrime = YES;
      for (d = 2; d < p; ++d) {
        if (p % d == 0) {
          isPrime = NO;
        }
      }
      if (isPrime == YES)
        [primeArray addObject:[NSNumber numberWithLong:(long)p]];
    }
    dataArea = [NSMutableData data];
    archiver = [[NSKeyedArchiver alloc] initForWritingWithMutableData:dataArea];
    [archiver encodeObject:primeArray forKey:@"primes"];
    [archiver finishEncoding];
    
    [dataArea writeToFile:@"primes.pl" atomically:YES];
  }
  return 0;
}
