//
//  PlayingCard.h
//  Machismo
//
//  Created by Manish Giri on 9/22/15.
//  Copyright (c) 2015 Manish Giri. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

//properties of a playing card are its rank and suit
@property (nonatomic, strong) NSString *suit;
@property (nonatomic) NSUInteger rank;

//class methods that return valid rank and suits
+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end
