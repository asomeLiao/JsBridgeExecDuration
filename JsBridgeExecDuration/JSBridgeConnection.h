//
//  JSBridgeConnection.h
//  PerfectJSBridge
//
//  Created by 廖亚雄 on 2019/4/4.
//  Copyright © 2019 廖亚雄. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HTTPConnection.h"
NS_ASSUME_NONNULL_BEGIN
@class JSBridgeWebsocket;
@interface JSBridgeConnection : HTTPConnection
@property(nonatomic, strong) JSBridgeWebsocket *ws;
@end

NS_ASSUME_NONNULL_END
