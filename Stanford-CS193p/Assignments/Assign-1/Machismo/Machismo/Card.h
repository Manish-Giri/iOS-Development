//
//  Card.h
//  Machismo
//
//  Created by Manish Giri on 9/22/15.
//  Copyright (c) 2015 Manish Giri. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

//contents of each card
@property (nonatomic, strong) NSString *contents;

//is this card chosen
@property (nonatomic, getter=isChosen) BOOL chosen;

//is this card matched
@property (nonatomic, getter=isMatched) BOOL matched;

//method - to check score of current card against matched card
-(int)match:(NSArray *)otherCards;

@end
