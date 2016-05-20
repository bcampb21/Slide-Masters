//
//  showUnlockFlexMode.h
//  Slide Masters
//
//  Created by Blake Campbell on 5/23/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface showUnlockFlexMode : UIViewController{
    AVAudioPlayer *audioPlayer;
    int canSound;
    
    NSTimer *myTimer;
    int time;
    IBOutlet UIImageView *background;
    IBOutlet UIImageView *flexArrow;
    
    IBOutlet UIButton *next;
    
    IBOutlet UILabel *flexModeUnlocked;
    IBOutlet UILabel *flexModeDescription;
    
    IBOutlet UIImageView *arrow;
    
}
@property(nonatomic,retain) IBOutlet UIImageView *background;
@property(nonatomic,retain) IBOutlet UIButton *next;
-(IBAction)next:(id)sender;
@end
