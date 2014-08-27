//
//  main.m
//  Exercise 3.7
//
//  Created by Michał Listowski on 31.05.2014.
//

#import <Foundation/Foundation.h>

//---- @interface section ----

@interface XYPoint : NSObject

-(void) print;
-(void) setXPoint: (int) x;
-(void) setYPoint: (int) y;
-(int) xPoint;
-(int) yPoint;

@end

//---- @implementation section ----

@implementation XYPoint{
  
  int xPoint;
  int yPoint;
}
-(void) print{
  NSLog(@"Coordinate X: %i and Y: %i", xPoint, yPoint);
}
-(void) setXPoint: (int) x{
  xPoint = x;
}
-(void) setYPoint: (int) y{
  yPoint = y;
}
-(int) xPoint{
  return xPoint;
}
-(int) yPoint{
  return yPoint;
}

@end

//---- Program Section ----

int main(int argc, const char * argv[])
{
  
  @autoreleasepool {
    
    XYPoint *coordinate = [[XYPoint alloc] init];
    
    // Set coordinate to X=5 Y=10
    
    [coordinate setXPoint:5];
    [coordinate setYPoint:10];
    
    // Display the coordination value
    
    [coordinate print];
    
    
  }
  return 0;
}

