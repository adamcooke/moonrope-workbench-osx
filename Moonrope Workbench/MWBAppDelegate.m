//
//  MWBAppDelegate.m
//  Moonrope Workbench
//
//  Created by Adam Cooke on 24/07/2014.
//  Copyright (c) 2014 Adam Cooke. All rights reserved.
//

#import "MWBAppDelegate.h"

@implementation MWBAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{

    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"index" ofType:@"html" inDirectory:@"site"];
    NSURL* fileURL = [NSURL fileURLWithPath:filePath];
    NSURLRequest* request = [NSURLRequest requestWithURL:fileURL cachePolicy:NSURLRequestReloadIgnoringLocalCacheData timeoutInterval:10];
    
    [[self.webView mainFrame] loadRequest:request];
    self.webView.UIDelegate = self;
    
}

- (void)webView:(WebView *)sender runJavaScriptAlertPanelWithMessage:(NSString *)message initiatedByFrame:(WebFrame *)frame {
    NSAlert *alert = [[NSAlert alloc] init];
    [alert addButtonWithTitle:@"OK"];
    [alert setMessageText:message];
    [alert runModal];
}

@end
