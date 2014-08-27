//
//  CMViewController.m
//  iPhone_1
//
//  Created by Michał Listowski on 27.05.2014.
//

#import "CMViewController.h"

@interface CMViewController ()

@end

@implementation CMViewController

@synthesize display;

-(IBAction) click1{
    display.text = @"1";
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
