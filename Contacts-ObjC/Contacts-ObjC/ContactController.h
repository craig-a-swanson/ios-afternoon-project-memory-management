//
//  ContactController.h
//  Contacts-ObjC
//
//  Created by Craig Swanson on 4/28/20.
//  Copyright © 2020 craigswanson. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Contact;

NS_ASSUME_NONNULL_BEGIN

@interface ContactController : NSObject

@property (nonatomic, retain) NSArray<Contact *> *contacts;

- (void)addNewContact:(Contact *)contact;

@end

NS_ASSUME_NONNULL_END
