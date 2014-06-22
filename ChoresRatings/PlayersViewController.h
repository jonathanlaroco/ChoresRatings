//
//  PlayersViewController.h
//  ChoresRatings
//
//  Created by Jonathan Laroco on 6/1/14.
//  Copyright (c) 2014 Jonathan Laroco. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlayerDetailsViewController.h"
#import "RatingDetailsViewController.h"

@interface PlayersViewController : UITableViewController <PlayerDetailsViewControllerDelegate, RatingDetailsViewControllerDelegate>
@property(nonatomic, strong) NSMutableArray *players;

@end


