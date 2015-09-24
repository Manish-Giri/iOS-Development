//
//  Deck.h
//  Machismo
//
//  Created by Manish Giri on 9/22/15.
//  Copyright (c) 2015 Manish Giri. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject


//method to add card to the deck
-(void)addCard:(Card *)card atTop:(BOOL) atTop;

//same method without atTop param
-(void)addCard:(Card *)card;

//method to dram random card from deck
-(Card *)drawRandomCard;


@end
