//
//  main.m
//  Exercise 3.2 & 3.3
//
//  Created by Michał Listowski on 31.05.2014.
//

#import <Foundation/Foundation.h>

//---- @interface section ----

@interface OpticalDiscDrive : NSObject

-(void) openTray;
-(void) closeTray;
-(void) playMusic;
-(void) playVideo;
-(void) setOpticalDisc: (int) n;
-(int) opticalDisc;

@end

//---- @implementation section ----

@implementation OpticalDiscDrive{
  
  int opticalDisc;
}
-(void) openTray{
  NSLog(@"Tray is Open. Put disc inside!");
}
-(void) closeTray{
  NSLog(@"Tray is Closed");
}
-(void) playMusic{
  NSLog(@"Start to play music from disc");
}
-(void) playVideo{
  NSLog(@"Start to play video from disc");
}

//---- Write data on disc ----

-(void) setOpticalDisc: (int) n{
  opticalDisc = n;
}

//---- Read data from disc

-(int) opticalDisc{
  return opticalDisc;
}

@end

//---- Program Section ----

int main(int argc, const char * argv[])
{
  
  @autoreleasepool {
    OpticalDiscDrive *externalDVD = [[OpticalDiscDrive alloc] init];
    [externalDVD openTray];
    [externalDVD closeTray];
    [externalDVD playMusic];
    
  }
  return 0;
}

