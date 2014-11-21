//
//  KMRMHomeCell.h
//  KimeraMobile
//
//  Created by Massimo Oliviero on 7/9/13.
//  Copyright (c) 2013 Massimo Oliviero. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "BaseCell.h"
#import "KMRMArgument.h"

@interface KMRMHomeCell : BaseCell

@property (weak, nonatomic) IBOutlet UILabel *argumentTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *argumentDescriptionLabel;

- (void)setupWithArgument:(KMRMArgument *)argument;

@end
