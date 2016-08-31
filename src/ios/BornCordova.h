//
//  PhoneDialer.h
//
//  Created by Justin McNally on 11/17/11.
//  Copyright (c) 2011 Kohactive. All rights reserved.


#import <Cordova/CDVPlugin.h>

@interface BornCordova : CDVPlugin

- (void)pushToNavigationController:(CDVInvokedUrlCommand*)command;

@end