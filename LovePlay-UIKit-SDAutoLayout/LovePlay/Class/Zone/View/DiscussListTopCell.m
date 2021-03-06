//
//  DiscussListTopCell.m
//  LovePlay
//
//  Created by Yuns on 2017/2/3.
//  Copyright © 2017年 Yuns. All rights reserved.
//

#import "DiscussListTopCell.h"
#import "DiscussListModel.h"

@interface DiscussListTopCell ()
@property (nonatomic, strong) UILabel *topTextNode;
@property (nonatomic, strong) UILabel *titleTextNode;
@property (nonatomic, strong) UIView *underLineNode;
@end

@implementation DiscussListTopCell

+ (instancetype)cellWithTableView:(UITableView *)tableView
{
    static NSString *ID = @"DiscussListTopCell";
    DiscussListTopCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[DiscussListTopCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    return cell;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        [self addSubNodes];
        [self sd_autoLayoutSubViews];
    }
    return self;
}

- (void)addSubNodes
{
    UILabel *topTextNode = [[UILabel alloc] init];
    topTextNode.font = [UIFont systemFontOfSize:12];
    topTextNode.textAlignment = NSTextAlignmentCenter;
    topTextNode.textColor = RGB(236, 126, 150);
    topTextNode.layer.cornerRadius = 5;
    topTextNode.layer.masksToBounds = YES;
    topTextNode.layer.borderWidth = 1;
    topTextNode.layer.borderColor = RGB(236, 126, 150).CGColor;
    topTextNode.text = @"置顶帖";
    [self.contentView addSubview:topTextNode];
    _topTextNode = topTextNode;
    
    UILabel *titleTextNode = [[UILabel alloc] init];
    titleTextNode.font = [UIFont systemFontOfSize:14];
    titleTextNode.textColor = RGB(36, 36, 36);
    [self.contentView addSubview:titleTextNode];
    _titleTextNode = titleTextNode;
    
    UIView *underLineNode = [[UIView alloc] init];
    underLineNode.backgroundColor = RGB(222, 222, 222);
    [self.contentView addSubview:underLineNode];
    _underLineNode = underLineNode;

}

- (void)setForumThread:(ForumThread *)forumThread
{
    _forumThread = forumThread;
    _titleTextNode.text = forumThread.subject;
}

#pragma mark - layout
- (void)sd_autoLayoutSubViews
{
    _topTextNode.sd_layout
    .widthIs(45)
    .heightIs(25)
    .topSpaceToView(self.contentView, 10)
    .leftSpaceToView(self.contentView, 10);
    
    _titleTextNode.sd_layout
    .heightIs(30)
    .leftSpaceToView(_topTextNode, 10)
    .rightSpaceToView(self.contentView, 10)
    .centerYEqualToView(_topTextNode);
    
    _underLineNode.sd_layout
    .heightIs(0.5)
    .topSpaceToView(_topTextNode, 10)
    .leftEqualToView(self.contentView)
    .rightEqualToView(self.contentView);
    
    [self setupAutoHeightWithBottomView:_underLineNode bottomMargin:0];
}
@end
