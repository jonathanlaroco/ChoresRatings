//
//  PlayerCell.h
//  ChoresRatings
//
//  Created by Jonathan Laroco on 6/1/14.
//  Copyright (c) 2014 Jonathan Laroco. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayerCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UILabel *choreLabel;
@property (nonatomic, weak) IBOutlet UIImageView *ratingImageView;

@end
