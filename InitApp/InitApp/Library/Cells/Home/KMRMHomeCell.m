//
//  KMRMHomeCell.m
//  KimeraMobile
//
//  Created by Massimo Oliviero on 7/9/13.
//  Copyright (c) 2013 Massimo Oliviero. All rights reserved.
//

#import "KMRMHomeCell.h"

@implementation KMRMHomeCell



#pragma mark - Layout Methods

- (void)awakeFromNib
{
    [super awakeFromNib];
    

    
    [self.interface.theme themeLabel:self.argumentTitleLabel type:ThemeLabelTypeArgumentTitle];
    [self.interface.theme themeLabel:self.argumentDescriptionLabel type:ThemeLabelTypeArgumentDescription];
}



#pragma mark - Setup Methods

- (void)setupWithArgument:(KMRMArgument *)argument
{
    self.argumentTitleLabel.text = argument.name;
    self.argumentDescriptionLabel.text = argument.detail;
}

@end
