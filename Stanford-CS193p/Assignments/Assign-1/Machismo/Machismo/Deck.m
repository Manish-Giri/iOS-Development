//
//  Deck.m
//  Machismo
//
//  Created by Manish Giri on 9/22/15.
//  Copyright (c) 2015 Manish Giri. All rights reserved.
//

#import "Deck.h"


//private properties in Class Extension
@interface Deck ()

//property- mutable array for deck storage
@property(nonatomic, strong) NSMutableArray *cards;

@end


@implementation Deck

//allocate & initialise the cards array
-(NSMutableArray *)cards {
    if(!_cards) {
        _cards = [[NSMutableArray alloc] init];
    }
    return _cards;
}


-(void)addCard:(Card *)card atTop:(BOOL)atTop {
    
    //if at top exists, add card to the top, else add card to end
    if(atTop) {
        [self.cards insertObject:(Card *)card atIndex:0];
    }
    else {
        [self.cards addObject:(Card *)card];
    }
    
}

-(void)addCard:(Card *)card {
    [self addCard:(Card *)card atTop:NO];
}

//create a random number and use card at that position in the array
-(Card *)drawRandomCard {
    
    Card *randomCard = nil;
    //check that array is non empty before proceeding
    if([self.cards count]) {
        int index = arc4random()%[self.cards count];
        randomCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
    }
    
    return randomCard;
    
}


@end
