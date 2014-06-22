//
//  RatingDetailsViewController.m
//  ChoresRatings
//
//  Created by Jonathan Laroco on 6/8/14.
//  Copyright (c) 2014 Jonathan Laroco. All rights reserved.
//

#import "RatingDetailsViewController.h"
#import "Players.h"
#import "PlayerCell.h"

@interface RatingDetailsViewController ()

@end

@implementation RatingDetailsViewController
{
    NSString *_rating;
}


- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.ratingLabel.text = _rating;
   // self.userLabel.text = self.detailItem.nameLabel;
   // self.choreLabel.text = self.dataItem.data.choreLabel;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        [self.ratingLabel becomeFirstResponder];
    }
}
//change this one below, leave the top commented
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"PickRating"]) {
        RatingPickerViewController *ratingPickerViewController = segue.destinationViewController;
        ratingPickerViewController.delegate = self;
        ratingPickerViewController.rating = _rating;
    }
}
- (void)ratingPickerViewController:(RatingPickerViewController *)controller didSelectGame:(NSString *)rating
{
    _rating = rating;
    self.ratingLabel.text = _rating;
    
    [self.navigationController popViewControllerAnimated:YES];
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    if ((self = [super initWithCoder:aDecoder])) {
        NSLog(@"init RatingDetailsViewController");
        _rating = @"Select a Rating";
    }
    return self;
}

- (void)dealloc
{
    NSLog(@"dealloc RatingDetailsViewController");
}

- (IBAction)cancel:(id)sender
{
    [self.delegate ratingDetailsViewControllerDidCancel:self];
}

- (IBAction)done:(id)sender
{
    NSString *RatingBuffer;
    
    Players *playerRating = [[Players alloc] init];
    
    playerRating.name = self.userLabel.text;
    playerRating.chore = self.choreLabel.text;
    
    RatingBuffer = self.ratingLabel.text;
    

    if ([RatingBuffer  isEqual: @"No Stars"])
    {
        playerRating.rating = 0;
    }
    else if ([RatingBuffer isEqual: @"One Star"])
    {
       playerRating.rating = 1;
    }
    else if ([RatingBuffer isEqual: @"Two Stars"])
    {
        playerRating.rating = 2;
    }
    else if ([RatingBuffer isEqual: @"Three Stars"])
    {
        playerRating.rating = 3;
    }
    else if([RatingBuffer isEqual: @"Four Stars"])
    {
        playerRating.rating = 4;
    }
    else if([RatingBuffer isEqual: @"Five Stars"])
    {
        playerRating.rating = 5;
    }
    
    [self.delegate ratingDetailsViewController:self didAddPlayer:playerRating];
}

@end
