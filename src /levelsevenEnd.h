//
//  levelsevenEnd.h
//  Slide Masters
//
//  Created by Blake Campbell on 7/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "slidemastersAppDelegate.h"
#import <GameKit/GameKit.h>
#import <AVFoundation/AVFoundation.h>

@interface levelsevenEnd : UIViewController <UIAlertViewDelegate,GKLeaderboardViewControllerDelegate> {
    slidemastersAppDelegate *appdelegate;
    
    AVAudioPlayer *audioPlayer;
    int canSound;
    
    IBOutlet UIButton *nCMenu;
    IBOutlet UIButton *nCreplay;

    
     IBOutlet UIImageView *newBestTime;
    
    IBOutlet UIImageView *roundIt;
    
    IBOutlet UIImageView *bronze;
    IBOutlet UIImageView *silver;
    IBOutlet UIImageView *gold;
    
    IBOutlet UIImageView *challenge;
    IBOutlet UIImageView *complete;
    IBOutlet UIButton *menu;
    IBOutlet UIButton *replay;
    IBOutlet UIButton *next;
    ///
    IBOutlet UILabel *myTopaz;
    IBOutlet UIImageView *topazBorder;
    IBOutlet UIImageView *potBorder;
    
    IBOutlet UIImageView *topaz1;
    IBOutlet UIImageView *topaz2;
    IBOutlet UIImageView *topaz3;
    IBOutlet UIImageView *topaz4;
    
    IBOutlet UIImageView *oTopaz;
    
    int didGetMedal;
    int coinCount;
    int coinCountAfter;
    int coinUp;
    int coinAdding;

    IBOutlet UILabel *timelabel;

    IBOutlet UILabel *beatBlaze;
    IBOutlet UILabel *theTime;
    IBOutlet UILabel *andEarn;
    float sup;
    float current;
    NSTimer *mytimer;
    int time;
    int count;
    int step;
    ///
    int whichShow;
    int whatChallenge;
    //
    IBOutlet UIButton *leaderBoard;
    
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
-(IBAction)menu:(id)sender;
-(IBAction)replay:(id)sender;
-(IBAction)next:(id)sender;
-(void)changeText;
///
-(void)submitScore;
-(IBAction)showLeaderboard:(id)sender;
//
-(IBAction)menuNot:(id)sender;
-(IBAction)replayNot:(id)sender;


@property (nonatomic, retain) IBOutlet UILabel *beatBlaze;
@property (nonatomic, retain) IBOutlet UILabel *theTime;
@property (nonatomic, retain) IBOutlet UILabel *andEarn;
@property(nonatomic, retain)IBOutlet UIImageView *bronze;
@property(nonatomic, retain)IBOutlet UIImageView *silver;
@property(nonatomic, retain)IBOutlet UIImageView *gold;
@property(nonatomic, retain)IBOutlet UIImageView *challenge;
@property(nonatomic, retain)IBOutlet UIImageView *complete;
@property(nonatomic, retain)IBOutlet UIButton *menu;
@property(nonatomic, retain)IBOutlet UIButton *replay;
@property(nonatomic, retain)IBOutlet UIButton *next;

@property (nonatomic, retain)IBOutlet UILabel *myTopaz;
@property (nonatomic, retain)IBOutlet UIImageView *topazBorder;
@property (nonatomic, retain)IBOutlet UIImageView *potBorder;

@property (nonatomic, retain)IBOutlet UIImageView *oTopaz;

@property (nonatomic, retain)IBOutlet UIImageView *topaz1;
@property (nonatomic, retain)IBOutlet UIImageView *topaz2;
@property (nonatomic, retain)IBOutlet UIImageView *topaz3;
@property (nonatomic, retain)IBOutlet UIImageView *topaz4;
@end
