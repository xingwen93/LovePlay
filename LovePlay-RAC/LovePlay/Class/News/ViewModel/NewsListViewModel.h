//
//  NewsListViewModel.h
//  LovePlay
//
//  Created by Yuns on 2017/2/21.
//  Copyright © 2017年 Yuns. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NewsListViewModel : NSObject

@property (nonatomic, strong, readonly) NSArray *listModels;

@property (nonatomic, strong) RACCommand *fetchNewsListCommand;

@end
