//
//  Card.m
//  CardGame
//
//  Created by Manish Giri on 9/19/15.
//  Copyright (c) 2015 Manish Giri. All rights reserved.
//

#import "Card.h"

@implementation Card

-(int) match:(NSArray *)otherCards {
    int score = 0;
    
    for(Card *card in otherCards) {
        if([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
        
    }
    return score;
}

@end
