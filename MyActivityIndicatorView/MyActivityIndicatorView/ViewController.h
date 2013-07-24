//
//  ViewController.h
//  MyActivityIndicatorView
//
//  Created by 紫冬 on 13-7-12.
//  Copyright (c) 2013年 qsji. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    UIActivityIndicatorView *activityIndicatorView;
    IBOutlet UIButton *buttonStart;
    IBOutlet UIButton *buttonStop;
}
-(IBAction)onClickButtonStart:(id)sender;
-(IBAction)onClickButtonStop:(id)sender;


@end
