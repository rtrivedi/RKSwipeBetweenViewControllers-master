//
//  RWBasicTableViewCell.m
//  UDo
//
//  Created by Soheil M. Azarpour on 8/9/14.
//  Copyright (c) 2014 Soheil Azarpour. All rights reserved.
//

#import "RWBasicTableViewCell.h"

@implementation RWBasicTableViewCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
    
        self.contentView.backgroundColor = [UIColor whiteColor];
        
        
        _taskName = [[UILabel alloc] initWithFrame:CGRectMake(0,
                                                                  0,
                                                                  100,
                                                                  20)];
        _taskName.textColor = [UIColor blackColor];        
        [self.contentView addSubview:_taskName];
        
    }
    return self;
}



- (void)prepareForReuse
{
    [super prepareForReuse];
}

@end