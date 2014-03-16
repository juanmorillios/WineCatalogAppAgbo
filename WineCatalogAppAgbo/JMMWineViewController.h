//
//  JMMWineViewController.h
//  WineCatalogAppAgbo
//
//  Created by Juan Morillios on 16/03/14.
//  Copyright (c) 2014 JuanMorillios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JMMWineViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *wineryNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *typeLabel;
@property (weak, nonatomic) IBOutlet UILabel *originLabel;
@property (weak, nonatomic) IBOutlet UILabel *graphesLabel;
@property (weak, nonatomic) IBOutlet UILabel *notaLabel;
@property (weak, nonatomic) IBOutlet UIImageView *photoView;


@property (strong, nonatomic) JMMWineViewController *model;

@property (strong, nonatomic) IBOutletCollection(UIImageView) NSArray *ratingViews;


//INICIALIZADOR DONDE PASAMOS EL MODELO DE DATO.

- (id) initWithModel: (JMMWineViewController *) aModel;

-(IBAction)displayWeb:(id)sender;



@end
