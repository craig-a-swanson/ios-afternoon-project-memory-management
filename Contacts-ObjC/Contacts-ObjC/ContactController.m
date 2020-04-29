//
//  ContactController.m
//  Contacts-ObjC
//
//  Created by Craig Swanson on 4/28/20.
//  Copyright © 2020 craigswanson. All rights reserved.
//

#import "ContactController.h"
#import "Contact.h"

@interface ContactController ()

@property (nonatomic) NSMutableArray *internalContacts;

@end

@implementation ContactController

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self addTestData];
    }
    return self;
}

- (NSArray *)contacts {
    return _internalContacts;
}

- (NSMutableArray *)internalContacts {
    if (!_internalContacts) {
        _internalContacts = [[NSMutableArray alloc] init];
    }
    return _internalContacts;
}

- (void)addTestData {
    [self.internalContacts addObjectsFromArray:@[
        [[[Contact alloc] initWithFirstName:@"Henry" lastName:@"Hickenbaum" email:@"thehickbaum@hotmail.com" phoneNumber:@"555-555-5555"] autorelease]
    ]];
}

//- (void)dealloc {
//    [_contacts release];
//    [_internalContacts release];
//    [super dealloc];
//}

@end
