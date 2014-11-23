//
//  SampleLableMatrixViewController.m
//  DXAlertView
//
//  Created by xiekw on 13-9-12.
//  Copyright (c) 2013年 xiekw. All rights reserved.
//

#import "SampleLabelMatrixViewController.h"
#import "NALLabelsMatrix.h"

@interface SampleLabelMatrixViewController ()

@end

@implementation SampleLabelMatrixViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    NALLabelsMatrix* matrix = [[NALLabelsMatrix alloc] initWithFrame:CGRectMake(5, 60, 310, 100) andColumnsWidths:[[NSArray alloc] initWithObjects:@60,@125,@125, nil]];
    
    
    [matrix addRecord:[[NSArray alloc] initWithObjects:@" ", @"Old Value", @"New value ", nil]];
    [matrix addRecord:[[NSArray alloc] initWithObjects:@"Field1", @"hello", @"This is a really really long string and should wrap to multiple lines.", nil]];
    [matrix addRecord:[[NSArray alloc] initWithObjects:@"Some Date", @"06/24/2013", @"06/30/2013", nil]];
    [matrix addRecord:[[NSArray alloc] initWithObjects:@"Field2", @"some value", @"some new value", nil]];
    [matrix addRecord:[[NSArray alloc] initWithObjects:@"Long Fields", @"The quick brown fox jumps over the little lazy dog.", @"some new value", nil]];
    
    [self.view addSubview:matrix];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
