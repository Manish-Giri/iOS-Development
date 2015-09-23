//
//  PlayingCard.h
//  CardGame
//
//  Created by Manish Giri on 9/19/15.
//  Copyright (c) 2015 Manish Giri. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (nonatomic,strong) NSString *suit;    //one of club, heart, spade, diamond
@property (nonatomic) NSUInteger rank;  //numbers from 0 through 13

@end
