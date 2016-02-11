//
//  UtilViewController.m
//  Utility
//
//  Created by Abu Bakar on 02/11/2016.
//  Copyright (c) 2016 Abu Bakar. All rights reserved.
//

#import "UtilViewController.h"
#import "UtilDeviceInfo.h"

@interface UtilViewController ()

@end

@implementation UtilViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    BOOL isiPad = [DeviceInfo isiPad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
