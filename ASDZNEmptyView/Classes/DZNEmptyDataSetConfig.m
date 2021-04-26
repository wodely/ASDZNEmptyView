//
//  DZNEmptyDataSetConfig.m
//  hxxdj
//
//  Created by lyh on 2019/8/21.
//  Copyright © 2019 aisino. All rights reserved.
//

#import "DZNEmptyDataSetConfig.h"

@implementation DZNEmptyDataSetConfig

+ (UIImage *)defaultDZNEmptyImage {
    return [UIImage imageNamed:@"no_data"];
}

+ (NSAttributedString *)defaultDZNEmptyAttributedString {
    NSString *title = @"\n暂无数据";
    NSDictionary *attributes = @{
                                 NSFontAttributeName:[UIFont systemFontOfSize:14],
                                 NSForegroundColorAttributeName:[UIColor colorWithRed:(102)/255.0 green:(102)/255.0 blue:(102)/255.0 alpha:(1.0)]
                                 };
    return [[NSAttributedString alloc] initWithString:title attributes:attributes];;
}

@end
