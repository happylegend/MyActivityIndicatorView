//
//  ViewController.m
//  MyActivityIndicatorView
//
//  Created by 紫冬 on 13-7-12.
//  Copyright (c) 2013年 qsji. All rights reserved.
//

/*
 活动指示器(UIActivityIndicatorView)可以告知用户有一个操作正在进行中。派生自UIView，所以他是视图，也可以附着在视图上。
 一.创建
 UIActivityIndicatorView* activityIndicatorView = [ [ UIActivityIndicatorView alloc ] init]
 
 UIActivityIndicatorView* activityIndicatorView = [ [ UIActivityIndicatorView alloc ]
 initWithFrame:CGRectMake(250.0,20.0,30.0,30.0)];
 二. 属性设置风格：
 [activityIndicatorView setActivityIndicatorViewStyle:UIActivityIndicatorViewStyleGray];
 activityIndicatorView.activityIndicatorViewStyle= UIActivityIndicatorViewStyleGray;
 系统给你提供了3种风格：
 UIActivityIndicatorViewStyleWhiteLarge 大型白色指示器
 UIActivityIndicatorViewStyleWhite 标准尺寸白色指示器
 1.UIActivityIndicatorViewStyleGray 灰色指示器，用于白色背景
 如果希望指示器停止后自动隐藏，那么要设置hidesWhenStoped属性为YES。默认是YES。设置为NO停止后指示器仍会显示。
 activityIndicatorView.hidesWhenStoped = NO;
 三.显示
 可以将它附着在任何视图上，比如表格单元、或者视图：
 [ self.view addSubview:activityIndicatorView ];
 四.启动和停止
 [ activityIndicatorView startAnimating ];//启动
 [ activityIndicatorView stopAnimating ];//停止
 最后释放
 */

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //创建一个活动指示器
    activityIndicatorView = [[UIActivityIndicatorView alloc] init];
    
    //设置活动指示器的大小，位置，颜色，停止后自动隐藏
    [activityIndicatorView setFrame:CGRectMake(0, 0, 50, 50)];      //大小
    [activityIndicatorView setCenter:CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2)];  //设置位置中间的方法和思路
    [activityIndicatorView setActivityIndicatorViewStyle:UIActivityIndicatorViewStyleGray];    //设置灰色
    activityIndicatorView.hidesWhenStopped = YES;
    
    //显示活动指示器，添加到父视图中
    [self.view addSubview:activityIndicatorView];
    
    //启动活动指示器
    [activityIndicatorView startAnimating];
    
    //释放活动指示器
    [activityIndicatorView release];
    
    
}

-(void)onClickButtonStart:(id)sender;
{
    [activityIndicatorView startAnimating];
}

-(void)onClickButtonStop:(id)sender
{
    [activityIndicatorView stopAnimating];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
