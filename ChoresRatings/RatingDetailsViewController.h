//
//  RatingDetailsViewController.h
//  ChoresRatings
//
//  Created by Jonathan Laroco on 6/8/14.
//  Copyright (c) 2014 Jonathan Laroco. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RatingPickerViewController.h"

@class RatingDetailsViewController;
@class Players;
@class PlayerViewController;

@protocol RatingDetailsViewControllerDelegate <NSObject>

- (void)ratingDetailsViewControllerDidCancel:(RatingDetailsViewController *)controller;
- (void)ratingDetailsViewController:(RatingDetailsViewController *)controller didAddPlayer:(Players *)player;

@end

@interface RatingDetailsViewController : UITableViewController <RatingPickerViewControllerDelegate>
@property (strong, nonatomic) PlayerViewController *detailItem;
@property (weak, nonatomic) IBOutlet UILabel *userLabel;
@property (weak, nonatomic) IBOutlet UILabel *choreLabel;
@property (weak, nonatomic) IBOutlet UILabel *ratingLabel;

@property (nonatomic, weak) id <RatingDetailsViewControllerDelegate> delegate;

- (IBAction)cancel:(id)sender;
- (IBAction)done:(id)sender;

@end
