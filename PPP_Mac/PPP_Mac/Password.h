//
//  Password.h
//  PPP_Mac
//
//  Created by Carl on 6/24/14.
//  Copyright (c) 2014 Xformatics. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Password : NSObject

@property (assign) int passLength;
@property (assign) int useUppers;
@property (assign) int useLowers;
@property (assign) int useSpecChar;
@property (assign) int useNumbers;
@property (assign) NSString* uName;
@property (assign) NSString* dName;
@property (assign) int passStrength;
@property (retain) NSMutableString* password;
@property (retain) NSDictionary* retdict;
@property (assign) NSString* specChars;
@property (assign) NSString* letters;
@property (assign) NSAlert* noCharAlert;

- (id) initWithPassStrength: (int) strength WithUseUppers: (int) uUppers
              WithUseLowers: (int) uLowers WithUseSpecChar: (int) uspecchar
             WithUseNumbers: (int) usenumbers;

- (NSDictionary*) genPassword;

@end
