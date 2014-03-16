//
//  JMMWineWebViewController.m
//  WineCatalogAppAgbo
//
//  Created by Juan Morillios on 16/03/14.
//  Copyright (c) 2014 JuanMorillios. All rights reserved.
//

#import "JMMWineWebViewController.h"

@interface JMMWineWebViewController ()

@end

@implementation JMMWineWebViewController

#pragma mark -  Init

- (id)initWithModel:(JMMWineModel *)aModel
{
    if (self = [super initWithNibName:nil bundle:nil]) {
        _model = aModel;
        self.title = @"Web";
    }
    
    return self;
}


#pragma mark - View lifecycle

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.navigationController.navigationBar.tintColor = [UIColor colorWithRed:0.5
                                                                        green:0
                                                                         blue:0.13
                                                                        alpha:1];
    [self syncViewToModel];
}


#pragma mark -  Memory Management

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - UIWebViewDelegate

- (void)webViewDidStartLoad:(UIWebView *)webView
{
    [self.activityView setHidden:NO];
    [self.activityView startAnimating];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    [self.activityView stopAnimating];
    [self.activityView setHidden:YES];
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
    [self.activityView stopAnimating];
    [self.activityView setHidden:YES];
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error"
                                                    message:[error localizedDescription]
                                                   delegate:nil
                                          cancelButtonTitle:nil
                                          otherButtonTitles:@"OK", nil];
    [alert show];
}


#pragma mark - Utils

- (void)syncViewToModel
{
    self.title = self.model.wineCompanyName;
    self.browserView.delegate = self;
    [self.browserView loadRequest:[NSURLRequest requestWithURL:self.model.wineCompanyWeb]];
}

@end
