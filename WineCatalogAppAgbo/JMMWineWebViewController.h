//
//  JMMWineWebViewController.h
//  WineCatalogAppAgbo
//
//  Created by Juan Morillios on 16/03/14.
//  Copyright (c) 2014 JuanMorillios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JMMWineModel.h"


@interface JMMWineWebViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIWebView *browserView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityView;
@property (strong, nonatomic) JMMWineModel *model;

- (id)initWithModel:(JMMWineModel *)aModel;


@end
