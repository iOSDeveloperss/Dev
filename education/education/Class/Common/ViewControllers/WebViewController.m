//
//  WebViewController.m
//  GitHubYi
//
//  Created by coderyi on 15/4/4.
//  Copyright (c) 2015年 www.coderyi.com. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()<UIWebViewDelegate> {
    UILabel *titleText;
    UIActivityIndicatorView *activityIndicator;
    UIWebView *webView;
    UIView *backBt;
    UIView *closeBt;
}

@end

@implementation WebViewController

#pragma mark - Lifecycle

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.tabBarController.tabBar.hidden = YES;
    
}

- (void)viewWillDisappear:(BOOL)animated
{
    self.tabBarController.tabBar.hidden = NO;
    [activityIndicator removeFromSuperview];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    titleText = [[UILabel alloc] initWithFrame: CGRectMake((ScreenWidth-120)/2, 0, 120, 44)];
    titleText.backgroundColor = [UIColor clearColor];
    titleText.textColor=[UIColor whiteColor];
    [titleText setFont:[UIFont systemFontOfSize:19.0]];
    titleText.textAlignment=NSTextAlignmentCenter;
    titleText.text=_urlString;
    
    self.view.backgroundColor=[UIColor whiteColor];
    self.automaticallyAdjustsScrollViewInsets=NO;
    
    webView=[[UIWebView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, ScreenHeight-64)];
    [self.view addSubview:webView];
    webView.delegate=self;
    [webView loadRequest:[[NSURLRequest alloc]initWithURL:[NSURL URLWithString:_urlString]] ];
    
    activityIndicator=[[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(ScreenWidth-60, 0, 44, 44)];
    [self.navigationController.navigationBar addSubview:activityIndicator];
    activityIndicator.activityIndicatorViewStyle=UIActivityIndicatorViewStyleWhite;
    
    backBt=[[UIView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
    UIButton *backButton=[UIButton buttonWithType:UIButtonTypeCustom];
    backButton.frame=CGRectMake(0, 0, 30, 30);
    [backButton setImage:[UIImage imageNamed:@"ic_arrow_back_white_48pt"] forState:UIControlStateNormal];
    [backButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [backButton addTarget:self action:@selector(backBtAction) forControlEvents:UIControlEventTouchUpInside];
    [backBt addSubview:backButton];

    closeBt=[[UIView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
    UIButton *closeButton=[UIButton buttonWithType:UIButtonTypeCustom];
    closeButton.frame=CGRectMake(0, 0, 30, 30);
    closeButton.titleLabel.font=[UIFont systemFontOfSize:12];
    [closeButton setImage:[UIImage imageNamed:@"ic_cancel_white_48pt"] forState:UIControlStateNormal];
    [closeButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [closeButton addTarget:self action:@selector(closeBtAction) forControlEvents:UIControlEventTouchUpInside];
    [closeBt addSubview:closeButton];
    self.navigationItem.leftBarButtonItems=@[[[UIBarButtonItem alloc] initWithCustomView:backBt]];
}

- (void)backBtAction
{
    if (webView.canGoBack)
    {
        [webView goBack];
        self.navigationItem.leftBarButtonItems=@[[[UIBarButtonItem alloc] initWithCustomView:backBt],[[UIBarButtonItem alloc] initWithCustomView:closeBt]];
    }else{
        [self closeBtAction];
    }
}

- (void)closeBtAction
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UIWebViewDelegate

- (void)webViewDidStartLoad:(UIWebView *)webView
{
    [activityIndicator startAnimating];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    [activityIndicator stopAnimating];
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{
    [activityIndicator stopAnimating];
}

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType {
    return YES;
}

@end
