//
//  MWBJavascript.h
//  Moonrope Workbench
//
//  Created by Adam Cooke on 25/07/2014.
//  Copyright (c) 2014 Adam Cooke. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MWBJavascript : NSObject

- (void)saveState:(NSString *)json;
- (NSString *)currentState;

@end
