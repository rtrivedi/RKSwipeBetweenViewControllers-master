//
//  RWBasicTableViewCell.h
//  UDo
//
//  Created by Soheil M. Azarpour on 8/9/14.
//  Copyright (c) 2014 Soheil Azarpour. All rights reserved.
//

@import UIKit;

@interface RWBasicTableViewCell : UITableViewCell

@property (retain, nonatomic) UIImageView *senderThumbnail;
@property (retain, nonatomic) UILabel *taskName;
@property (retain, nonatomic) UILabel *reminderTime;
@property (retain, nonatomic) UIButton *doneButton;



@end
