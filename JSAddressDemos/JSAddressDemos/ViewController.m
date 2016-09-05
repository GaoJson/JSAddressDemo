//
//  ViewController.m
//  JSAddressDemos
//
//  Created by Macx on 16/8/30.
//  Copyright © 2016年 gaojs. All rights reserved.
//

#import "ViewController.h"
#import "JSAddressPickerView.h"

#define screen_width [UIScreen mainScreen].bounds.size.width
#define screen_height [UIScreen mainScreen].bounds.size.height
@interface ViewController ()<JSAddressPickerDelegate>
@property (nonatomic, strong) JSAddressPickerView *pickerView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 100, 100, 100);
    [button setTitle:@"click me !" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    button.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:button];
    [button addTarget:self action:@selector(enterAddress) forControlEvents:UIControlEventTouchUpInside];
}

- (void)enterAddress {
    if (self.pickerView) {
        self.pickerView.hidden = NO;
        return;
    }
    self.pickerView = [[JSAddressPickerView alloc] initWithFrame:CGRectMake(0, 0, screen_width, screen_height)];
    [self.pickerView updateAddressAtProvince:@"湖南省" city:@"常德市" town:@"石门县"];
    self.pickerView.delegate = self;
    self.pickerView.font = [UIFont boldSystemFontOfSize:14];
    [self.view addSubview:self.pickerView];
}

- (void)JSAddressCancleAction:(id)senter {
   self.pickerView.hidden = YES;
}

- (void)JSAddressPickerRerurnBlockWithProvince:(NSString *)province city:(NSString *)city town:(NSString *)town {
    self.pickerView.hidden = YES;
    NSLog(@"%@  %@  %@",province,city,town);
    
    
}

- (void)setPickerView:(JSAddressPickerView *)pickerView {
    if (!_pickerView) {
        
    }
    _pickerView = pickerView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
