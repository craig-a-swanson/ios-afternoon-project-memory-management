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
//        NSSortDescriptor *lastNameSortDescriptor = [NSSortDescriptor sortDescriptorWithKey:@"lastName" ascending:YES];
//        NSArray *sortedContacts = [self.internalContacts sortedArrayUsingDescriptors:@[lastNameSortDescriptor]];
//        self.internalContacts = [NSMutableArray arrayWithArray:sortedContacts];
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

- (void)addNewContact:(Contact *)contact {
    [self.internalContacts addObject:contact];
}

- (void)addTestData {
    [self.internalContacts addObjectsFromArray:@[
        [[[Contact alloc] initWithFirstName:@"Henry" lastName:@"Hickenbaum" email:@"thehickbaum@hotmail.com" phoneNumber:@"555-555-5555"] autorelease],
        [[[Contact alloc] initWithFirstName:@"Beverly" lastName:@"Lancaster" email:@"blancaster32@tufts.edu" phoneNumber:@"111-222-3333"] autorelease],
        [[[Contact alloc] initWithFirstName:@"Jessica" lastName:@"Abrams" email:@"jess_abrams@lambdastudents.com" phoneNumber:@"333-333-3333"] autorelease]
    ]];
}

- (void)dealloc {
    [_contacts release];
    [super dealloc];
}

@end
