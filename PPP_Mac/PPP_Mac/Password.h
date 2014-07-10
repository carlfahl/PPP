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
@property (retain) NSNumber* passStrength;
@property (retain) NSMutableString* password;
@property (retain) NSMutableString* sql_ns_st;
@property (retain) NSDictionary* retdict;
@property (assign) NSString* specChars;
@property (assign) NSString* letters;
@property (assign) NSString* notAllowed;
@property (assign) NSAlert* noCharAlert;

- (id) initWithPassStrength: (NSNumber*) strength WithUseUppers: (int) uUppers
             WithUseLowers: (int) uLowers WithUseSpecChar: (int) uspecchar
             WithUseNumbers: (int) usenumbers WithPassLength: (int) passlen
             WithNotAllowed: (NSString*) notAllowed;

- (NSDictionary*) genPassword;

@end
