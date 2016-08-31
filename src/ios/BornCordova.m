//
//  PhoneDialer.m

//
//  Created by Justin McNally on 11/17/11.
//  Copyright (c) 2011 Kohactive. All rights reserved.
//
//  Revised by Trevor Cox of Appazur Solutions Inc. on 01/06/12
//  Revised by Gaetan SENN. on 24/09/13

#import "BornCordova.h"
#import <Cordova/CDV.h>
#import "TestViewController.h"

@implementation BornCordova

- (void)pushToNavigationController:(CDVInvokedUrlCommand*)command
{
    [self.commandDelegate runInBackground:^{
        CDVPluginResult* pluginResult = nil;
        NSString* url;
        NSString* number = [command.arguments objectAtIndex:0];

        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
        TestViewController * t = [[TestViewController alloc] initWithNibName:@"TestViewController." bundle:nil];
        
        [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:t animated:YES completion:^{
            
        }];
        
        


        // return result
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    }];
}

@end