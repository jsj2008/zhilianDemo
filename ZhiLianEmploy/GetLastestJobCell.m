//
//  GetLastestJobCell.m
//  ZhiLianEmploy
//
//  Created by Ibokan on 13-2-27.
//  Copyright (c) 2013年 Ibokan. All rights reserved.
//

#import "GetLastestJobCell.h"

@implementation GetLastestJobCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        self.chooseImg=[[UIButton alloc] initWithFrame:CGRectMake(5, 10, 25, 25)];
        [self.chooseImg setBackgroundImage:[UIImage imageNamed:@"search_result_unselected.png"] forState:0];
        [self addSubview:self.chooseImg];
        
        
        self.jobName=[[UILabel alloc] initWithFrame:CGRectMake(35, 5, 100, 20)];
//        self.jobName.text=@"工程师";
        [self addSubview:self.jobName];
        
        self.companyName=[[UILabel alloc] initWithFrame:CGRectMake(35, 25, 150, 15)];
        self.companyName.textColor=[UIColor lightGrayColor];
//        self.companyName.text=@"工程师";
        self.companyName.font=[UIFont fontWithName:@"Arial" size:12];
        [self addSubview:self.companyName];
        
        
        dateFormatter1 = [[NSDateFormatter alloc]init];
        NSLocale* local =[[NSLocale alloc] initWithLocaleIdentifier:@"en_US"];
        [dateFormatter1 setLocale: local];
        [dateFormatter1 setDateFormat:@"yyyy-mm-dd"];
        
        self.date=[[UILabel alloc] initWithFrame:CGRectMake(200, 5, 95, 20)];
        self.date.textColor=[UIColor lightGrayColor];
        self.date.text=[dateFormatter1 stringFromDate:[NSDate date]];
        self.date.textAlignment=NSTextAlignmentRight;
//        self.date.text=@"2012";
        self.date.font=[UIFont fontWithName:@"Arial" size:12];
        [self addSubview:self.date];
        
        self.address=[[UILabel alloc] initWithFrame:CGRectMake(200, 23, 95, 20)];
        self.address.textColor=[UIColor lightGrayColor];
        self.address.textAlignment=NSTextAlignmentRight;
//        self.address.text=@"2012";
        self.address.font=[UIFont fontWithName:@"Arial" size:12];
        [self addSubview:self.address];
        
        self.accessoryImg = [[UIImageView alloc] initWithFrame:CGRectMake(320-15, 15, 14, 14)] ;
        self.accessoryImg.image=[UIImage imageNamed:@"accessoryArrow.png"];
        [self addSubview:self.accessoryImg];

        
    }
    return self;
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
