//
//  Password.m
//  PPP_Mac
//
//  Created by Carl on 6/24/14.
//  Copyright (c) 2014 Xformatics. All rights reserved.
//

#import "Password.h"
#include <stdlib.h>
#include <time.h>

@implementation Password

- (id) initWithPassStrength:(NSNumber*) strength WithUseUppers: (int) uUppers
              WithUseLowers: (int) uLowers WithUseSpecChar: (int) uspecchar
             WithUseNumbers: (int) usenumbers WithPassLength: (int) passlen
{
    if (self = [super init])
    {
        [self setPassStrength:strength];
        [self setUseSpecChar:uspecchar];
        [self setUseNumbers:usenumbers];
        [self setUseLowers:uLowers];
        [self setUseUppers:uUppers];
        [self setPassLength:passlen];
    }
    return self;
}

- (NSDictionary*) genPassword
{
    int num_types = 0;
    int idex;
    NSRange stidex;
    int* tmp;
    
    num_types = 0;
    
    tmp = malloc(4*sizeof(int));
    
    [self setPassword:[[NSMutableString alloc] init]];
    [self setRetdict:[[NSDictionary alloc] init]];
    [self setNoCharAlert:[[NSAlert alloc] init]];
    //[self setPassword:[[NSMutableString alloc] initWithCapacity:10]];
    //[self setPassword:[NSMutableString stringWithString:@""]];
    
    stidex.length = 1;
    
    [self setLetters:@"abcdefghijklmnopqrstuvwxyz"];
    [self setSpecChars:@"!@#$%^&*()"];
    
    NSLog(@"%1i %1i %1i %1i %1i", [self useSpecChar], [self useNumbers], [self useLowers], [self useUppers], [self passLength]);
    
    srand(time(NULL));
    if ([self useSpecChar] == 1)
    {
        tmp[num_types] = 0;
        num_types++;
    }
    if ([self useNumbers] == 1)
    {
        tmp[num_types] = 1;
        num_types++;
    }
    if ([self useLowers] == 1)
    {
        tmp[num_types] = 2;
        num_types++;
    }
    if ([self useUppers] == 1)
    {
        tmp[num_types] = 3;
        num_types++;
    }
    
    NSLog(@"%1i", num_types);
    
    if (num_types > 0)
    {
        for (int i=0; i<[self passLength]; i++)
        {
            switch (tmp[rand()%num_types])
            {
                case 0:
                    idex = rand()%10;
                    stidex.location = idex;
                    [[self password] appendString:[[self specChars] substringWithRange:stidex]];
                    break;
                case 1:
                    [[self password] appendString:[NSString stringWithFormat:@"%1i", rand()%10]];
                    break;
                case 2:
                    idex = rand()%26;
                    stidex.location = idex;
                    [[self password] appendString:[[self letters] substringWithRange:stidex]];
                    break;
                case 3:
                    idex = rand()%26;
                    stidex.location = idex;
                    [[self password] appendString:[[[self letters] substringWithRange:stidex] uppercaseString]];
                    break;
                default:
                    NSLog(@"Should have added something");
                    break;
            }
        }
    }
    else
    {
        [[self noCharAlert] setMessageText:@"Please Select at least one character type."];
        [[self noCharAlert] runModal];
    }
    
    //[self setPassStrength: (10 - [self passLength])];
    [self setPassStrength: [NSNumber numberWithInt: (10 - [self passLength] + (4-num_types))]];
    
    NSLog(@"%@", [self password]);
    
    [self setRetdict:[NSDictionary dictionaryWithObjectsAndKeys:[self password], @"password", [self passStrength], @"passStrength", nil]];
    
    return [self retdict];
    
}

@end
