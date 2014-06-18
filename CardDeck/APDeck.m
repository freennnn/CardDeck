//
//  APDeck.m
//  CardDeck
//
//  Created by alexander.pranevich on 6/17/14.
//  Copyright (c) 2014 Alexander Pronevich. All rights reserved.
//

#import "APDeck.h"

#define NUMBER_OF_CARDS_IN_DECK 52

@implementation APDeck

- (id)init
{
    if (self = [super init])
    {
        _cards = [[NSMutableArray alloc] init];
        for (int suit = Club; suit <= Heart; suit++)
        {
            for (int rank = Rank2 ; rank <= RankA; rank++)
            {
                [_cards addObject:[[APCard alloc] initWihtSuit:suit andRank:rank]];
            }
        }

    }
    return self;
}

- (APCard *)deal
{
    APCard *card = nil;
    if (self.cards.count > 0)
    {
        card = [self.cards lastObject];
        [self.cards removeLastObject];
    }
    return card;
}

- (void)shuffle
{
    NSUInteger count = self.cards.count;
    for (int i = 0; i < count; ++i)
    {
        NSInteger remainingCount = count - i;
        NSInteger exchangeIndex = i + arc4random_uniform(remainingCount);
        [self.cards exchangeObjectAtIndex:i withObjectAtIndex:exchangeIndex];
    }
}

@end
