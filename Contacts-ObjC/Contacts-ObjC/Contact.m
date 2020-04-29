//
//  Contact.m
//  Contacts-ObjC
//
//  Created by Craig Swanson on 4/28/20.
//  Copyright © 2020 craigswanson. All rights reserved.
//

#import "Contact.h"

@implementation Contact

- (instancetype)initWithFirstName:(NSString *)firstName
                         lastName:(NSString *)lastName
                            email:(NSString *)email
                      phoneNumber:(NSString *)phoneNumber {
    
    if (self = [super init]) {
        _firstName = [firstName copy];
        _lastName = [lastName copy];
        _email = [email copy];
        _phoneNumber = [phoneNumber copy];
    }
    return self;
}

- (void)dealloc {
    [_firstName release];
    [_lastName release];
    [_email release];
    [_phoneNumber release];
    [super dealloc];
}

@end
