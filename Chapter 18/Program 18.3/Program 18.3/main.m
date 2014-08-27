//
//  main.m
//  Program 18.3
//
//  Created by Michał Listowski on 25.08.2014.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
  
  @autoreleasepool {
    Fraction *f1 = [[Fraction alloc] init];
    Fraction *f2;
    
    [f1 setTo:2 over:5];
    f2 = [f1 copy];
    
    [f2 setTo:1 over:3];
    
    [f1 print];
    [f2 print];  
  }
  return 0;
}
