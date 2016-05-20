//
//  levelnine.h
//  Slide Masters
//
//  Created by Blake Campbell on 6/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "slidemastersAppDelegate.h"
#import <AVFoundation/AVFoundation.h>

@interface levelnine : UIViewController{
     slidemastersAppDelegate *appdelegate;
    
    AVAudioPlayer *audioPlayer;
    int canSound;
    
    int time;
    NSTimer *mytimer;
    IBOutlet UIButton *play;
    IBOutlet UIButton *menu;
    IBOutlet UIImageView *topaz;
    
    // Labels
    IBOutlet UILabel *bestTime;
    IBOutlet UILabel *yourBestTime;
    IBOutlet UILabel *beatBlaze;
    IBOutlet UILabel *theTime;
    IBOutlet UILabel *andEarn;
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
  
-(IBAction)start:(id)sender;
-(IBAction)back:(id)sender;
@property (nonatomic, retain) IBOutlet UIImageView *topaz;
@property (nonatomic, retain) IBOutlet UIButton *play;
@property (nonatomic, retain) IBOutlet UIButton *menu;
@property (nonatomic, retain) IBOutlet UILabel *bestTime;
@property (nonatomic, retain) IBOutlet UILabel *yourBestTime;
@property (nonatomic, retain) IBOutlet UILabel *beatBlaze;
@property (nonatomic, retain) IBOutlet UILabel *theTime;
@property (nonatomic, retain) IBOutlet UILabel *andEarn;

@end
