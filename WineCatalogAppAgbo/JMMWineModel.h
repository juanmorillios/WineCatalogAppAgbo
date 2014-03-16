//
//  JMMWineModel.h
//  WineCatalogAppAgbo
//
//  Created by Juan Morillios on 16/03/14.
//  Copyright (c) 2014 JuanMorillios. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JMMWineModel : NSObject


#define NO_RATING -1


//Modelo del Vino

@property (strong, nonatomic) NSString *type;
@property (strong, nonatomic) UIImage *photo;
@property (strong, nonatomic) NSURL *wineCompanyWeb;
@property (strong, nonatomic) NSString *notes;
@property (strong, nonatomic) NSString *origen;
@property (nonatomic) int rating;
@property (strong, nonatomic) NSArray *grapes;
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *wineCompanyName;



//Inicializador designado para el vino.


+(id)wineWithName: (NSString *) aName
   wineCompanyName: (NSString *) aWineCompanyName
              type: (NSString *) atype
            origen: (NSString *) anOrigen
            grapes: (NSArray *) arrayOfGrapes
    wineCompanyWeb: (NSURL *) aURL
             notes: (NSString *) aNote
             ratin: (int) aRating
             photo: (UIImage *) aPhoto;


//Inicializador de COnveniencia

+(id)wineWithName: (NSString *) aName
  wineCompanyName: (NSString *) aWineCompanyName
             type: (NSString *) atype
           origen: (NSString *) anOrigen;




//Inicializador designado para el vino.


-(id) initWithName: (NSString *) aName
   wineCompanyName: (NSString *) aWineCompanyName
              type: (NSString *) atype
            origen: (NSString *) anOrigen
            grapes: (NSArray *) arrayOfGrapes
    wineCompanyWeb: (NSURL *) aURL
             notes: (NSString *) aNote
             ratin: (int) aRating
             photo: (UIImage *) aPhoto;


//Inicializador de COnveniencia

-(id)initWithName: (NSString *) aName
  wineCompanyName: (NSString *) aWineCompanyName
             type: (NSString *) atype
           origen: (NSString *) anOrigen;



@end
