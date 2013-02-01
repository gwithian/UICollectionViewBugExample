//
//  ViewController.m
//  UICollectionViewBugExample
//
//  Created by Thomas Hartnell on 01/02/2013.
//
//

#import "ViewController.h"
#define kTextFieldCellIdentifier @"textFieldCell"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.cellVisible = YES;
}

- (void)toggleCellVisibility:(UIBarButtonItem *)sender {
    [self setCellVisible:!self.isCellVisible];
    sender.title = (self.isCellVisible) ? @"remove cell" : @"add cell";
    NSIndexPath *cellIndexPath = [NSIndexPath indexPathForItem:0 inSection:0];
    if (self.isCellVisible) {
        [self.collectionView insertItemsAtIndexPaths:@[cellIndexPath]];
    } else {
        [self.collectionView deleteItemsAtIndexPaths:@[cellIndexPath]];
    }
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return (self.isCellVisible) ? 1 : 0;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    return [collectionView dequeueReusableCellWithReuseIdentifier:kTextFieldCellIdentifier forIndexPath:indexPath];
}

@end
