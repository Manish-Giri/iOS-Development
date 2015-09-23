//
//  Deck.h
//  CardGame
//
//  Created by Manish Giri on 9/19/15.
//  Copyright (c) 2015 Manish Giri. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

-(void)addCard:(Card *)card atTop:(BOOL) atTop; //name of this method - addCard: atTop:
-(void)addCard:(Card *)card;
-(Card *)drawRandomCard;

@end
