//
//  ViewController.m
//  Machismo
//
//  Created by Manish Giri on 9/22/15.
//  Copyright (c) 2015 Manish Giri. All rights reserved.
//

#import "ViewController.h"
#import "Deck.h"
#import "PlayingCardDeck.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;

//property to maintain number of flips
@property (nonatomic) int flipCount;

//property deck (to draw random cards)
@property (nonatomic, strong) Deck *deck;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//lazy instantiation of deck property so it begins with a deck full of playing cards

- (Deck *) deck {
    
    if(!_deck) {
        
        //allocate and initialize a "playing card" deck as it inherits from deck
        _deck = [[PlayingCardDeck alloc] init];
        
    }
    return _deck;
}

- (void)setFlipCount:(int)flipCount {
    _flipCount = flipCount;
    
    //set the text of the label to reflect the flipcount
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
    
    //log the number of flipcounts for debugging purposes
    NSLog(@"Number of flips changed to = %d\n", self.flipCount);
}


- (IBAction)touchCardButton:(UIButton *)sender {
    
    //check what is currently displayed, then flip accordingly
    
    //if title is currently not nil or of 0 characters
    if(sender.currentTitle.length) {
        
        //set to cardback as current card is face up
        UIImage *cardImage = [UIImage imageNamed:@"cardback"];
        [sender setBackgroundImage:cardImage forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    }
    
    else {
        
        //---------------------------------------------------
        //existing code from lecture slides commented out
        //---------------------------------------------------
        
        //set to card front as current card is face down
        //UIImage *cardImage = [UIImage imageNamed:@"cardfront"];
        //[sender setBackgroundImage:cardImage forState:UIControlStateNormal];
        //[sender setTitle:@"A♣︎" forState:UIControlStateNormal];
        
        //------------------------------------------
        //          code for assignment 1
        //------------------------------------------
        
        //utilize drawRandomCard method from class Deck to bring out a random card
        Card *randomCard = [self.deck drawRandomCard];
        
        //check for empty deck
        if(randomCard) {
            
            //get it's contents
            NSString *randomCardContents = [randomCard contents];
            
            //finally, print this contents when card is flipped face up
            UIImage *cardImage = [UIImage imageNamed:@"cardfront"];
            [sender setBackgroundImage:cardImage forState:UIControlStateNormal];
            [sender setTitle:randomCardContents forState:UIControlStateNormal];
        }
        
    }
    
    //increase flipcount with every touch
    self.flipCount++;
    
}


@end
