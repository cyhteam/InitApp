//
//  Theme.h
//  KimeraMobile
//
//  Created by Massimo Oliviero on 7/9/13.
//  Copyright (c) 2013 Massimo Oliviero. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, ThemeLabelType)
{
    ThemeLabelTypeArgumentTitle,
    ThemeLabelTypeArgumentDescription
};

@protocol Theme <NSObject>

- (void)configure;

- (void)themeLabel:(UILabel *)label type:(ThemeLabelType)type;

@end
