//
//  Deck.m
//  CardGame
//
//  Created by Manish Giri on 9/19/15.
//  Copyright (c) 2015 Manish Giri. All rights reserved.
//

#import "Deck.h"

@interface Deck()
@property (nonatomic, strong) NSMutableArray *cards;    //deck of cards
@end

@implementation Deck
-(NSMutableArray *)cards {
    if(!(_cards)) {
        _cards = [[NSMutableArray alloc] init];
    }
    
    return _cards;
}

-(void)addCard:(Card *)card atTop:(BOOL)atTop {
    if(atTop) {
        [self.cards insertObject:(card) atIndex:0];
    }
    else {
        [self.cards addObject:card];
    }
}

-(void)addCard:(Card *)card {
    [self addCard:card atTop:NO];
}

-(Card *) drawRandomCard {
    
    //create a card instance
    Card *randomCard = nil;
    
    //check if deck is empty
    if([self.cards count]) {
        
        //generate a random number and pick card of that number
        unsigned index = arc4random() % [self.cards count];
        //access card from mutable array cards at position index
        randomCard = self.cards[index];
        //remove this card from deck
        [self.cards removeObjectAtIndex:index];
        
    }
    
    return randomCard;
}

@end
