//
//  RatingPickerViewController.h
//  ChoresRatings
//
//  Created by Jonathan Laroco on 6/9/14.
//  Copyright (c) 2014 Jonathan Laroco. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RatingDetailsViewController;

@protocol RatingPickerViewControllerDelegate <NSObject>
- (void)ratingPickerViewController:(RatingDetailsViewController *)controller didSelectGame:(NSString *)rating;
@end

@interface RatingPickerViewController : UITableViewController

@property (nonatomic, weak) id <RatingPickerViewControllerDelegate> delegate;
@property (nonatomic, strong) NSString *rating;

@end
