//
//  JSAddressPickerView.h
//  JSAddressDemo
//
//  Created by Macx on 16/8/19.
//  Copyright © 2016年 gaojs. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol JSAddressPickerDelegate <NSObject>
@optional
- (void)JSAddressPickerRerurnBlockWithProvince:(NSString *)province
                                          city:(NSString *)city town:(NSString *)town;
- (void)JSAddressCancleAction:(id)senter;
@end

@interface JSAddressPickerView : UIView
@property (nonatomic, weak) id<JSAddressPickerDelegate> delegate;
@property (nonatomic, strong) NSString *province;
@property (nonatomic, strong) NSString *city;
@property (nonatomic, strong) NSString *town;

- (void)updateAddressAtProvince:(NSString *)province city:(NSString *)city town:(NSString *)town;
/** 内容字体 */
@property (nonatomic, strong) UIFont *font;
@end
