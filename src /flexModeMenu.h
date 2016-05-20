//
//  flexModeMenu.h
//  Slide Masters
//
//  Created by Blake Campbell on 3/5/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GameKit/GameKit.h>
#import <AVFoundation/AVFoundation.h>

@interface flexModeMenu : UIViewController <UIAlertViewDelegate,GKLeaderboardViewControllerDelegate> {
    AVAudioPlayer *audioPlayer;
    int canSound;
    
    IBOutlet UILabel *topaz;
    IBOutlet UILabel *expLeft;
    IBOutlet UILabel *flexLevelLabel;
    int toGo;
    
    
    IBOutlet UIButton *play;
    IBOutlet UIButton *upgrade;
    IBOutlet UIButton *stats;
    int num;
    IBOutlet UIProgressView *expBar;
    int currentExp;
    int maxExp;
    int flexLevel;
    
    IBOutlet UILabel *maxLevelReached;
    
}
@property(nonatomic, retain) IBOutlet UIButton *play;
@property(nonatomic, retain) IBOutlet UIButton *upgrade;
@property(nonatomic, retain) IBOutlet UIButton *stats;

-(IBAction)play:(id)sender;
-(IBAction)back:(id)sender;
-(IBAction)flexLeaderboard:(id)sender;
-(IBAction)stats:(id)sender;
-(IBAction)rewards:(id)sender;

-(IBAction)tut:(id)sender;
-(IBAction)store:(id)sender;

@end
