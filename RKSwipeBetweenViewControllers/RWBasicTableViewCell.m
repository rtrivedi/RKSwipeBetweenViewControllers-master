//
//  RWBasicTableViewCell.m
//  UDo
//
//  Created by Soheil M. Azarpour on 8/9/14.
//  Copyright (c) 2014 Soheil Azarpour. All rights reserved.
//

#import "RWBasicTableViewCell.h"

@implementation RWBasicTableViewCell{
    
    UIView *firstThird;
    UIView *Middle;
    
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        UIFont *labelFont = [UIFont fontWithName:@"BrandonText-Regular" size:11];
        UIFont *reminderFont = [UIFont fontWithName:@"BrandonText-ThinItalic" size:10];

    
        firstThird = [[UIView alloc] initWithFrame:CGRectMake(0, 0, frame.size.width*0.25, frame.size.height)];
        Middle = [[UIView alloc] initWithFrame:CGRectMake(firstThird.frame.size.width - 5, 0, frame.size.width*0.6, frame.size.height)];
        
        _senderThumbnail = [[UIImageView alloc] initWithFrame:CGRectMake(19, frame.origin.y*0.5 + 10, 40, 40)];
        [_senderThumbnail setContentMode:UIViewContentModeScaleAspectFill];
        _senderThumbnail.layer.cornerRadius = _senderThumbnail.frame.size.width / 2;
        _senderThumbnail.clipsToBounds = YES;
        _senderThumbnail.image = [UIImage imageNamed: @"ronakprofile.png"];
        _senderThumbnail.center = CGPointMake(firstThird.center.x, firstThird.center.y + 10 );
        
        _taskName = [[UILabel alloc] initWithFrame:CGRectMake(Middle.frame.origin.x,_senderThumbnail.frame.origin.y, Middle.frame.size.width, 60)];
        _taskName.textColor = [[UIColor alloc] initWithRed:136/255.0f green:136/255.0f blue:136/255.0f alpha:1.0f];
        [_taskName setNumberOfLines:4];
        _taskName.font = labelFont;
        
        _reminderTime = [[UILabel alloc] initWithFrame:CGRectMake(Middle.frame.origin.x,_taskName.frame.origin.y + _taskName.frame.size.height, Middle.frame.size.width, 20)];
        _reminderTime.textColor = [[UIColor alloc] initWithRed:136/255.0f green:136/255.0f blue:136/255.0f alpha:1.0f];
        _reminderTime.font = reminderFont;
        _reminderTime.text = @"Reminder at 11:30am";
        
        UIImage *img = [self imageWithImage:[UIImage imageNamed:@"checkmark.png"] scaledToSize:CGSizeMake(30, 30)];

        
        [self.contentView addSubview:_senderThumbnail];
        [self.contentView addSubview:_taskName];
        [self.contentView addSubview:_reminderTime];
        
    }
    return self;
}

- (UIImage *)imageWithImage:(UIImage *)image scaledToSize:(CGSize)newSize {
    // In next line, pass 0.0 to use the current device's pixel scaling factor (and thus account for Retina resolution).
    // Pass 1.0 to force exact pixel size.
    UIGraphicsBeginImageContextWithOptions(newSize, NO, 0.0);
    [image drawInRect:CGRectMake(0, 0, newSize.width, newSize.height)];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}


- (void)prepareForReuse
{
    [super prepareForReuse];
}

@end