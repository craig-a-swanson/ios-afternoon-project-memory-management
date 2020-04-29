//
//  ContactsDetailViewController.m
//  Contacts-ObjC
//
//  Created by Craig Swanson on 4/28/20.
//  Copyright © 2020 craigswanson. All rights reserved.
//

#import "ContactsDetailViewController.h"
#import "Contact.h"

@interface ContactsDetailViewController ()

@property (retain, nonatomic) IBOutlet UITextField *firstNameTextField;
@property (retain, nonatomic) IBOutlet UITextField *lastNameTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneTextField;

@end

@implementation ContactsDetailViewController

@synthesize contact = _contact;

- (void)setContact:(Contact *)contact {
    [contact retain];
    [_contact release];
    _contact = contact;
    [self updateViews];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateViews];
    // Do any additional setup after loading the view.
}

- (void)updateViews {
    if (self.contact) {
        self.firstNameTextField.text = self.contact.firstName;
        self.lastNameTextField.text = self.contact.lastName;
        self.emailTextField.text = self.contact.email;
        self.phoneTextField.text = self.contact.phoneNumber;
    }
}

- (void)dealloc
{
    [_contact release];
    [_firstNameTextField release];
    [_lastNameTextField release];
    [_emailTextField release];
    [_phoneTextField release];
    [super dealloc];
}

@end
