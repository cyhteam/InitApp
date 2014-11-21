//
//  UIImage+Scale.m
//  SmartTalk2
//
//  Created by Nguyen Manh Cuong on 7/30/14.
//
//

#import "UIImage+Scale.h"

@implementation UIImage (Scale)

-(UIImage*)scaleToSize:(CGSize)size
{
    // Create a bitmap graphics context
    // This will also set it as the current context
    UIGraphicsBeginImageContext(size);
    
    // Draw the scaled image in the current context
    [self drawInRect:CGRectMake(0, 0, size.width, size.height)];
    
    // Create a new image from current context
    UIImage* scaledImage = UIGraphicsGetImageFromCurrentImageContext();
    
    // Pop the current context from the stack
    UIGraphicsEndImageContext();
    
    // Return our new scaled image
    return scaledImage;
}

-(UIImage*)scaleToWidth:(CGFloat) width
{
    //Calculate destination height
    CGFloat orginalHeight = self.size.height;
    CGFloat orginalWidth = self.size.width;
    CGFloat height = orginalHeight * width / orginalWidth;
    
    CGSize size = CGSizeMake(width, height);
    
    // Create a bitmap graphics context
    // This will also set it as the current context
    UIGraphicsBeginImageContext(size);
    
    // Draw the scaled image in the current context
    [self drawInRect:CGRectMake(0, 0, size.width, size.height)];
    
    // Create a new image from current context
    UIImage* scaledImage = UIGraphicsGetImageFromCurrentImageContext();
    
    // Pop the current context from the stack
    UIGraphicsEndImageContext();
    
    // Return our new scaled image
    return scaledImage;
}

@end
