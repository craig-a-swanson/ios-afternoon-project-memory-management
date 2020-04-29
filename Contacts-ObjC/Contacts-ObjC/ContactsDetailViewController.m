//
//  ContactsDetailViewController.m
//  Contacts-ObjC
//
//  Created by Craig Swanson on 4/28/20.
//  Copyright © 2020 craigswanson. All rights reserved.
//

#import "ContactsDetailViewController.h"
#import "ContactsTableViewController.h"
#import "Contact.h"
#import "ContactController.h"

@interface ContactsDetailViewController ()

@property (retain, nonatomic) IBOutlet UITextField *firstNameTextField;
@property (retain, nonatomic) IBOutlet UITextField *lastNameTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneTextField;

@end

@implementation ContactsDetailViewController

@synthesize contact = _contact;
@synthesize contactController = _contactController;

- (void)setContact:(Contact *)contact {
    [contact retain];
    [_contact release];
    _contact = contact;
    [self updateViews];
}

- (void)setContactController:(ContactController *)contactController {
    
    [contactController retain];
    [_contactController release];
    [self willChangeValueForKey:@"contactController"];
    _contactController = contactController;
    [self didChangeValueForKey:@"contactController"];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateViews];
}

- (IBAction)saveContact:(id)sender {
    Contact *newContact = [[[Contact alloc] initWithFirstName:self.firstNameTextField.text lastName:self.lastNameTextField.text email:self.emailTextField.text phoneNumber:self.phoneTextField.text] autorelease];
    [self.contactController addNewContact:newContact];
    NSMutableArray *contacts = [_contactController mutableArrayValueForKey:@"contacts"];
    [contacts addObject:newContact];
    [self.navigationController popViewControllerAnimated:YES];
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
    [_contactController release];
    [super dealloc];
}

@end
