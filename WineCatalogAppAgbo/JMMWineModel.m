//
//  JMMWineModel.m
//  WineCatalogAppAgbo
//
//  Created by Juan Morillios on 16/03/14.
//  Copyright (c) 2014 JuanMorillios. All rights reserved.
//

#import "JMMWineModel.h"

@implementation JMMWineModel


#pragma Metodos de Clase

//Nuestro primer constructor o Metodo de clase para nuestro vino

+(id)wineWithName: (NSString *) aName
  wineCompanyName: (NSString *) aWineCompanyName
             type: (NSString *) atype
           origen: (NSString *) anOrigen
           grapes: (NSArray *) arrayOfGrapes
   wineCompanyWeb: (NSURL *) aURL
            notes: (NSString *) aNote
            ratin: (int) aRating
            photo: (UIImage *) aPhoto

{

    
    return [[self alloc] initWithName:aName
                      wineCompanyName:aWineCompanyName
                                 type:atype
                               origen:anOrigen
                               grapes:arrayOfGrapes
                       wineCompanyWeb:aURL
                                notes:aNote
                                ratin:aRating
                                photo:aPhoto];
    
}



+(id)wineWithName: (NSString *) aName
  wineCompanyName: (NSString *) aWineryCompanyName
             type: (NSString *) aType
           origen: (NSString *) anOrigen


{
    return [[self alloc] initWithName:aName wineCompanyName:aWineryCompanyName type:aType origen:anOrigen];
    
    
}




#pragma WineModel

//Nuestro modelo de vino


-(id) initWithName: (NSString *) aName
   wineCompanyName: (NSString *) aWineCompanyName
              type: (NSString *) atype
            origen: (NSString *) anOrigen
            grapes: (NSArray *) arrayOfGrapes
    wineCompanyWeb: (NSURL *) aURL
             notes: (NSString *) aNote
             ratin: (int) aRating
             photo: (UIImage *) aPhoto

{
    
    if (self = [super init]) {
        _name = aName;
        _wineCompanyName = aWineCompanyName;
        _type = atype;
        _origen = anOrigen;
        _grapes = arrayOfGrapes;
        _wineCompanyWeb = aURL;
        _notes = aNote;
        _rating = aRating;
        _photo = aPhoto;
    }
    


    return self;

}


//Inicializador de Conveniencia


-(id) initWithName: (NSString *) aName
   wineCompanyName: (NSString *) aWineCompanyName
              type: (NSString *) atype
            origen: (NSString *) anOrigen


{

    
    
    return  [self initWithName:aName
               wineCompanyName:aWineCompanyName
                          type:atype
                        origen:anOrigen
                        grapes:nil
                wineCompanyWeb:nil
                         notes:nil
                         ratin:NO_RATING
                         photo:nil];




}









@end
