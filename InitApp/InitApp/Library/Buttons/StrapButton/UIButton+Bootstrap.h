//
//  UIButton+Bootstrap.h
//  UIButton+Bootstrap
//
//  Created by Oskar Groth on 2013-09-29.
//  Copyright (c) 2013 Oskar Groth. All rights reserved.
//

/*
 How-To
 
 Drag the UIButton+Bootstrap, NSString+FontAwesome and FontAwesome.ttf files to your project
 Import the category with #import "UIButton+Bootstrap.h"
 Add Fonts provided by application key to Info.plist and include FontAwesome.ttf
 Create an UIButton with UIButtonTypeCustom.
 
 Then set the style by:
 
 [yourButton primaryStyle];
 
 [yourOtherButton successStyle];
 
 etc.
 And icons by:
 
 [yourButton addAwesomeIcon:FAIconBookmark beforeTitle:YES];
 
 [yourOtherButton addAwesomeIcon:FAIconCalendar beforeTitle:NO];
 
 etc.
 Credits
 
 BButton by mattlawer: https://github.com/mattlawer/BButton
 
 FontAwesome-iOS by leberwurstsaft: https://github.com/leberwurstsaft/FontAwesome-for-iOS
 
 */

#import <UIKit/UIKit.h>
#import "NSString+FontAwesome.h"
@interface UIButton (Bootstrap)
- (void)addAwesomeIcon:(FAIcon)icon beforeTitle:(BOOL)before;
-(void)bootstrapStyle;
-(void)defaultStyle;
-(void)primaryStyle;
-(void)successStyle;
-(void)infoStyle;
-(void)warningStyle;
-(void)dangerStyle;
@end
