//
//  SampleStrapButtonViewController.m
//  InitApp
//
//  Created by Nguyen Manh Cuong on 11/22/14.
//  Copyright (c) 2014 vnpt-technology.vn. All rights reserved.
//

#import "SampleStrapButtonViewController.h"
#import "UIButton+Bootstrap.h"

@interface SampleStrapButtonViewController ()

@end

@implementation SampleStrapButtonViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // View
    self.title = NSLocalizedString(@"Bootstrap Button", nil);
    
    [self.defaultButton defaultStyle];
    [self.primaryButton primaryStyle];
    [self.successButton successStyle];
    [self.infoButton infoStyle];
    [self.warningButton warningStyle];
    [self.dangerButton dangerStyle];
    
    [self.bookmarkButton primaryStyle];
    [self.bookmarkButton addAwesomeIcon:FAIconBookmark beforeTitle:YES];
    
    [self.doneButton successStyle];
    [self.doneButton addAwesomeIcon:FAIconCheck beforeTitle:NO];
    
    [self.deleteButton dangerStyle];
    [self.deleteButton addAwesomeIcon:FAIconRemove beforeTitle:YES];
    
    [self.downloadButton defaultStyle];
    [self.downloadButton addAwesomeIcon:FAIconDownloadAlt beforeTitle:NO];
    
    [self.calendarButton infoStyle];
    [self.calendarButton addAwesomeIcon:FAIconCalendar beforeTitle:NO];
    
    [self.favoriteButton warningStyle];
    [self.favoriteButton addAwesomeIcon:FAIconStar beforeTitle:NO];
    
}

@end
