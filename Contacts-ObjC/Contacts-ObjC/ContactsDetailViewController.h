//
//  ContactsDetailViewController.h
//  Contacts-ObjC
//
//  Created by Craig Swanson on 4/28/20.
//  Copyright © 2020 craigswanson. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Contact;
@class ContactController;

NS_ASSUME_NONNULL_BEGIN

@interface ContactsDetailViewController : UIViewController

@property (nonatomic, retain) Contact *contact;
@property (nonatomic, retain) ContactController *contactController;

@end

NS_ASSUME_NONNULL_END
