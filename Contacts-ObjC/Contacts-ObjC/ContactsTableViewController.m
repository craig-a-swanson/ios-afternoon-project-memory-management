//
//  ContactsTableViewController.m
//  Contacts-ObjC
//
//  Created by Craig Swanson on 4/28/20.
//  Copyright © 2020 craigswanson. All rights reserved.
//

#import "ContactsTableViewController.h"
#import "ContactController.h"
#import "Contact.h"
#import "ContactsDetailViewController.h"

@interface ContactsTableViewController ()

@property (nonatomic, retain) ContactController *contactController;

@end

@implementation ContactsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.contactController = [[[ContactController alloc] init] autorelease];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.contactController.contacts.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactCell" forIndexPath:indexPath];
    
    Contact *currentContact = self.contactController.contacts[indexPath.row];
    cell.textLabel.text = [NSString stringWithFormat:@"%@ %@", currentContact.firstName, currentContact.lastName];
    
    return cell;
}

#pragma mark - Navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"ExistingContactSegue"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        ContactsDetailViewController *contactsDetailVC = segue.destinationViewController;

        contactsDetailVC.contact = [self.contactController.contacts objectAtIndex:indexPath.row];
    }
}

@end
