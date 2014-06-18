//
//  APDeck.h
//  CardDeck
//
//  Created by alexander.pranevich on 6/17/14.
//  Copyright (c) 2014 Alexander Pronevich. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "APCard.h"

@interface APDeck : NSObject
@property (nonatomic, strong, readonly) NSMutableArray *cards;

- (APCard *)deal;
- (void)shuffle;

@end
