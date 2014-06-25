//
//  AppDelegate.h
//  PPP_Mac
//
//  Created by Carl on 6/24/14.
//  Copyright (c) 2014 Xformatics. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class Password;

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTextField *passLengthTextFeild;

@property (strong) Password *password;

- (IBAction)setUName:(id)sender;
- (IBAction)setDName:(id)sender;
- (IBAction)setUseSpecChar:(id)sender;
- (IBAction)setUseNumbers:(id)sender;
- (IBAction)setUseUppers:(id)sender;
- (IBAction)setUseLowers:(id)sender;
- (IBAction)setPassLength:(id)sender;
- (IBAction)incrDecPassLength:(id)sender;
- (IBAction)generatePassword:(id)sender;

@end
