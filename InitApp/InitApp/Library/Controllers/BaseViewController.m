//
//  BaseViewController.m
//  KimeraMobile
//
//  Created by Massimo Oliviero on 5/28/13.
//  Copyright (c) 2013 Massimo Oliviero. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@property (nonatomic, strong) KMRMDataModel *dataModel;
//@property (nonatomic, strong) UIPanGestureRecognizer *dynamicTransitionPanGesture;

@end

@implementation BaseViewController

- (KMRMDataModel *)dataModel
{
    if (nil == _dataModel)
    {
        _dataModel = [[KMRMDataModel alloc] init];
    }
    
    return _dataModel;
}


//- (void) addMenuLeft
//{
//    UIBarButtonItem* paneRevealLeftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"menu_icon"] style:UIBarButtonItemStyleBordered target:self action:@selector(menuButtonTapped)];
//    self.navigationItem.leftBarButtonItem = paneRevealLeftBarButtonItem;
//}
//
//- (void)menuButtonTapped {
//    [self.slidingViewController anchorTopViewToRightAnimated:YES];
//}

@end
