//
//  main.m
//  Exercise 4.07
//
//  Created by Michał Listowski on 02.06.2014.
//

#import <Foundation/Foundation.h>

//---- @interface section ----

@interface Rectangle : NSObject

-(void) setWidth: (int) w;
-(void) setHeight: (int) h;
-(int) width;
-(int) height;
-(int) area;
-(int) perimeter;

@end

//---- @implementation section ----

@implementation Rectangle{
    int width;
    int height;
}
-(void) setWidth: (int) w{
    width = w;
}
-(void) setHeight: (int) h{
    height = h;
}
-(int) width{
    return width;
}
-(int) height{
    return height;
}
-(int) area{
    return width * height;
}
-(int) perimeter{
    return 2 * width + 2 * height;
}

@end


//---- Program Section ----

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        Rectangle *myRect = [[Rectangle alloc] init];
        
        // Save width and height in Rectangle
        [myRect setWidth:5];
        [myRect setHeight:6];
        
        // Test of mathods
        NSLog(@"My rectangle have width = %i, height = %i, area = %i and perimeter = %i", [myRect width], [myRect height], [myRect area], [myRect perimeter]);
    }
    return 0;
}

