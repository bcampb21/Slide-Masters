//
//  tutorialTwo.h
//  Slide Masters
//
//  Created by Blake Campbell on 6/24/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface tutorialTwo : UIViewController{
    NSTimer *timer;
    IBOutlet UIButton *ok;
    IBOutlet UIImageView *helpful;
    IBOutlet UIImageView *tip;
    IBOutlet UILabel *plot;
    IBOutlet UILabel *giveTry;
    int time;
    int can;
}
@property(nonatomic, retain)IBOutlet UIButton *ok; 
@property(nonatomic, retain) IBOutlet UIImageView *helpful;
@property(nonatomic, retain) IBOutlet UIImageView *tip;
@property(nonatomic, retain) IBOutlet UILabel *plot;
@property(nonatomic, retain) IBOutlet UILabel *giveTry;

-(IBAction)delay:(id)sender;
@end
