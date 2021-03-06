//
//  NewsRelativeCellNode.h
//  LovePlay
//
//  Created by Yuns on 2017/2/4.
//  Copyright © 2017年 Yuns. All rights reserved.
//

#import <UIKit/UIKit.h>

@class NewsRelativeInfo;
@interface NewsRelativeCellNode : UITableViewCell

#pragma mark - interface
+ (instancetype)cellWithTableView:(UITableView *)tableView;

- (void)setupRelativeInfo:(NewsRelativeInfo *)relativeInfo;

@end
