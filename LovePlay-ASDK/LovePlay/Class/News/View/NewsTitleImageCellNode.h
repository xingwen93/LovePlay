//
//  NewsTitleImageCellNode.h
//  LovePlay
//
//  Created by Yuns on 2017/1/29.
//  Copyright © 2017年 Yuns. All rights reserved.
//

#import <AsyncDisplayKit/AsyncDisplayKit.h>

@class NewsListInfoModel;

@interface NewsTitleImageCellNode : ASCellNode

- (instancetype)initWithListInfoModel:(NewsListInfoModel *)listInfoModel;

@end
