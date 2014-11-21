//
//  KMRMBaseCell.m
//  KimeraMobile
//
//  Created by Massimo Oliviero on 7/9/13.
//  Copyright (c) 2013 Massimo Oliviero. All rights reserved.
//

#import "BaseCell.h"

@implementation BaseCell



#pragma mark - Layout Methods

- (void)awakeFromNib
{
    [super awakeFromNib];
    
    self.selectionStyle = UITableViewCellSelectionStyleNone;
}



#pragma mark - UIResponder+Boscolo Methods

- (CYHInterface *)interface
{
    return [[UIApplication sharedApplication] interface];
}

@end
