//
//  APCard.h
//  CardDeck
//
//  Created by alexander.pranevich on 6/17/14.
//  Copyright (c) 2014 Alexander Pronevich. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, Suit) {
    Club,
    Spade,
    Diamond,
    Heart
};

typedef NS_ENUM(NSInteger, Rank) {
    Rank2,
    Rank3,
    Rank4,
    Rank5,
    Rank6,
    Rank7,
    Rank8,
    Rank9,
    Rank10,
    RankJ,
    RankQ,
    RankK,
    RankA
};

@interface APCard : NSObject

@property (nonatomic, readonly) Suit suit;
@property (nonatomic, readonly) Rank rank;

- (id)initWihtSuit:(Suit)suit andRank:(Rank)rank;
- (NSString *)stringRepresentation;

@end
