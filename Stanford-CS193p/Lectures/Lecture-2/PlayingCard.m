//
//  PlayingCard.m
//  CardGame
//
//  Created by Manish Giri on 9/19/15.
//  Copyright (c) 2015 Manish Giri. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

@synthesize suit = _suit;

//override the getter method "contents" to return the description- rank&suit of the playing card
-(NSString *) contents {
    
    //return [NSString stringWithFormat:@"%lu %@", (unsigned long)self.rank, self.suit];
    
    //if rank is 0 or not set, return ?
    NSArray *rankStrings = @[@"?", @"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"11", @"12", @"13"];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

-(NSString *) suit {
    
    //return ? if suit is nil or not set
    return _suit?_suit:@"?";
}

-(void) setSuit:(NSString *)suit {
    //check the suit to be set is valid
    if([@[@"♥︎", @"♦︎", @"♠︎", @"♣︎"] containsObject:suit]) {
        _suit = suit;
    }
}

@end
