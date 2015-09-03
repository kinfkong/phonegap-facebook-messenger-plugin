//
//  FacebookConnectPlugin.m
//  GapFacebookConnect
//
//  Created by Jesse MacFadyen on 11-04-22.
//  Updated by Mathijs de Bruin on 11-08-25.
//  Updated by Christine Abernathy on 13-01-22
//  Copyright 2011 Nitobi, Mathijs de Bruin. All rights reserved.
//

#import "FacebookMessengerPlugin.h"


@implementation FacebookMessengerPlugin

- (CDVPlugin *)initWithWebView:(UIWebView *)theWebView {
    self = (FacebookMessengerPlugin *)[super initWithWebView:theWebView];
    return self;
}


- (void) shareImage:(CDVInvokedUrlCommand *)command {
    // Return access token if available
    [FBSDKMessengerSharer shareImage:[UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"https://www.baidu.com/img/bd_logo1.png"]]] withOptions:nil];
    CDVPluginResult *pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
