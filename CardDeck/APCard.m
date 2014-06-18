//
//  APCard.m
//  CardDeck
//
//  Created by alexander.pranevich on 6/17/14.
//  Copyright (c) 2014 Alexander Pronevich. All rights reserved.
//

#import "APCard.h"

@implementation APCard

- (id)initWihtSuit:(Suit)suit andRank:(Rank)rank
{
    if (self = [super init])
    {
        _suit = suit;
        _rank = rank;
    }
    return self;
}

- (NSString *)stringRepresentation
{
    return [NSString stringWithFormat:@"%@%@", [self getSuitStringRespresentation:self.suit],
            [self getRankStringRespresentation:self.rank]];
}

- (NSString *)getSuitStringRespresentation:(Suit)suit
{
    NSString *representation;
    switch (suit) {
        case Club:
            representation = @"Club";
            break;
        case Spade:
            representation = @"Spade";
            break;
        case Diamond:
            representation = @"Diamond";
            break;
        case Heart:
            representation = @"Heart";
            break;
        default:
            break;
    }
    return representation;
}

- (NSString *)getRankStringRespresentation:(Rank)rank
{
    NSString *representation;
    switch (rank) {
        case Rank2:
            representation = @"2";
            break;
        case Rank3:
            representation = @"3";
            break;
        case Rank4:
            representation = @"4";
            break;
        case Rank5:
            representation = @"5";
            break;
        case Rank6:
            representation = @"6";
            break;
        case Rank7:
            representation = @"7";
            break;
        case Rank8:
            representation = @"8";
            break;
        case Rank9:
            representation = @"9";
            break;
        case Rank10:
            representation = @"10";
            break;
        case RankJ:
            representation = @"J";
            break;
        case RankQ:
            representation = @"Q";
            break;
        case RankK:
            representation = @"K";
            break;
        case RankA:
            representation = @"A";
            break;
        default:
            break;
    }
    return representation;
}


@end
