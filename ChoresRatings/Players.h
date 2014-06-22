//
//  Players.h
//  ChoresRatings
//
//  Created by Jonathan Laroco on 6/1/14.
//  Copyright (c) 2014 Jonathan Laroco. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Players : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *chore;
@property (nonatomic, assign) int rating;

@end
