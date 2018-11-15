//
//  LDSModuleViewController.h
//  Smarthome
//
//  Created by leedarson on 2018/11/7.
//  Copyright © 2018年 com.lds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LDSModuleViewController : UIViewController
@property(nonatomic, strong) NSString *url;
@property(nonatomic, strong) NSString *filepath;

- (void) newMessage:(NSDictionary *)data;
@end
