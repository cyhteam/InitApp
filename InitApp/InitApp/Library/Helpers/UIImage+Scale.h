//
//  UIImage+Scale.h
//  SmartTalk2
//
//  Created by Nguyen Manh Cuong on 7/30/14.
//
//

#import <UIKit/UIKit.h>

@interface UIImage (Scale)

-(UIImage*)scaleToSize:(CGSize)size;
-(UIImage*)scaleToWidth:(CGFloat) width;

@end
