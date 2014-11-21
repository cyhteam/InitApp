//
//  DefaultTheme.m
//  KimeraMobile
//
//  Created by Massimo Oliviero on 7/9/13.
//  Copyright (c) 2013 Massimo Oliviero. All rights reserved.
//

#import "DefaultTheme.h"

@implementation DefaultTheme

- (void)configure
{
    // navigation bar
    [[UINavigationBar appearance] setTintColor:[UIColor darkGrayColor]];
}

- (void)themeLabel:(UILabel *)label type:(ThemeLabelType)type
{
    switch (type)
    {
        case ThemeLabelTypeArgumentTitle:
        {
            label.font = [UIFont boldSystemFontOfSize:16.0f];
            label.textColor = [UIColor darkGrayColor];
        }
            break;
            
        case ThemeLabelTypeArgumentDescription:
        {
            label.font = [UIFont boldSystemFontOfSize:13.0f];
            label.textColor = [UIColor lightGrayColor];
        }
            break;
            
        default:
            break;
    }
}

@end
