//
//  levelone.h
//  Slide Masters
//
//  Created by Blake Campbell on 4/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "slidemastersAppDelegate.h"
#import <AVFoundation/AVFoundation.h>

@interface levelone : UIViewController{
    AVAudioPlayer *audioPlayer;
    int canSound;
    
    slidemastersAppDelegate *appdelegate;
    NSTimer *timer;
    NSTimer *mytimer;
    int time;
    IBOutlet UIButton *play;
    IBOutlet UIButton *menu;
    IBOutlet UIImageView *topaz;

    // Labels
    IBOutlet UILabel *bestTime;
    IBOutlet UILabel *yourBestTime;
    IBOutlet UILabel *beatBlaze;
    IBOutlet UILabel *theTime;
    IBOutlet UILabel *andEarn;
    IBOutlet UIImageView *master;
    IBOutlet UIImageView *masterTextBox;
    IBOutlet UILabel *masterText;
    int step;
    
    IBOutlet UIImageView *backgroundOriginal;
    IBOutlet UIImageView *backgroundOne;
    IBOutlet UIImageView *backgroundTwo;
    IBOutlet UIImageView *backgroundThree;
    IBOutlet UIImageView *backgroundFour;
    IBOutlet UIImageView *backgroundFive;
    IBOutlet UIImageView *backgroundSix;
    IBOutlet UIImageView *backgroundSeven;
    IBOutlet UIImageView *backgroundEight;
    IBOutlet UIImageView *backgroundNine;
    IBOutlet UIImageView *backgroundTen;
    
}
    


-(IBAction)back:(id)sender;
-(IBAction)start:(id)sender;
-(void)newTimerForTip;
@property (nonatomic, retain) IBOutlet UIImageView *master;
@property (nonatomic, retain) IBOutlet UIImageView *masterTextBox;
@property (nonatomic, retain) IBOutlet UILabel *masterText;
@property (nonatomic, retain) IBOutlet UIImageView *topaz;
@property (nonatomic, retain) IBOutlet UIButton *play;
@property (nonatomic, retain) IBOutlet UIButton *menu;
@property (nonatomic, retain) IBOutlet UILabel *bestTime;
@property (nonatomic, retain) IBOutlet UILabel *yourBestTime;
@property (nonatomic, retain) IBOutlet UILabel *beatBlaze;
@property (nonatomic, retain) IBOutlet UILabel *theTime;
@property (nonatomic, retain) IBOutlet UILabel *andEarn;
@end
