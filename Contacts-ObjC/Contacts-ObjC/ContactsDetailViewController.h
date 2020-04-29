//
//  ContactsDetailViewController.h
//  Contacts-ObjC
//
//  Created by Craig Swanson on 4/28/20.
//  Copyright © 2020 craigswanson. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Contact;

NS_ASSUME_NONNULL_BEGIN

@interface ContactsDetailViewController : UIViewController

@property (nonatomic, retain) Contact *contact;

@end

NS_ASSUME_NONNULL_END
