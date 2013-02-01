//
//  ViewController.h
//  UICollectionViewBugExample
//
//  Created by Thomas Hartnell on 01/02/2013.
//
//

#import <UIKit/UIKit.h>

@interface ViewController : UICollectionViewController <UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>
@property (nonatomic, getter = isCellVisible) BOOL cellVisible;
- (IBAction)toggleCellVisibility:(id)sender;
@end
