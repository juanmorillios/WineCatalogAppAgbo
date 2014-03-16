//
//  JMMWineViewController.m
//  WineCatalogAppAgbo
//
//  Created by Juan Morillios on 16/03/14.
//  Copyright (c) 2014 JuanMorillios. All rights reserved.
//

#import "JMMWineViewController.h"

@interface JMMWineViewController ()

@end

@implementation JMMWineViewController

- (id) initWithModel: (JMMWineViewController *) aModel{
    
    
    if (self = [super initWithNibName:nil bundle:nil]) {
        _model = aModel;
    }
    
    return self;
    
    
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated{
    
    
    [super viewWillAppear:animated];
    
}


- (void)viewWillDisappear:(BOOL)animated{
    
    
    [super viewWillDisappear:animated];
    
}

-(IBAction)displayWeb:(id)sender{
    
    NSLog(@"Aqui va un texto");
    
    
}


@end
