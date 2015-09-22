//
//  Card.h
//  CardGame
//
//  Created by Manish Giri on 9/19/15.
//  Copyright (c) 2015 Manish Giri. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (nonatomic, strong) NSString *contents;
@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;
-(int)match:(NSArray *) otherCards;
@end
