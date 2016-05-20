//
//  flexModePrize.h
//  Slide Masters
//
//  Created by Blake Campbell on 5/16/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface flexModePrize : UIViewController{
    AVAudioPlayer *audioPlayer;
    int canSound;
    
    IBOutlet UILabel *text;
    IBOutlet UIButton *continueButton;
    IBOutlet UIButton *sphereButton;
    NSTimer *timer;
    int time;
    IBOutlet UILabel *prizeDescription;
    IBOutlet UIImageView *masterTokens;
    IBOutlet UIImageView *masterTokens2;
    IBOutlet UIImageView *background;
    IBOutlet UIImageView *topaz;
    IBOutlet UIImageView *glow;
    
    IBOutlet UILabel *backgroundImage;
    
}
-(IBAction)clickSphere:(id)sender;
-(IBAction)continueButton:(id)sender;
@property(nonatomic,retain) IBOutlet UILabel *text;
@property(nonatomic,retain) IBOutlet UIButton *continueButton;
@property(nonatomic,retain) IBOutlet UIButton *sphereButton;
@end
