//
//  TheStory.h
//  Slide Masters
//
//  Created by Blake Campbell on 12/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "slidemastersAppDelegate.h"
#import <AVFoundation/AVFoundation.h>

@interface TheStory : UIViewController{
    slidemastersAppDelegate *appdelegate;
    
    AVAudioPlayer *audioPlayer;
    int canSound;
    IBOutlet UIImageView *master;
    IBOutlet UIImageView *blaze;
    IBOutlet UIImageView *blazetextbox;
    IBOutlet UIImageView *mastertextbox;
    IBOutlet UIImageView *speechbubble;
    IBOutlet UIImageView *background;

    IBOutlet UILabel *label;
    IBOutlet UILabel *label2;
    IBOutlet UILabel *vlable;
    NSTimer *timer;
    int time;
    int method;
    IBOutlet UIButton *skip;
    int onoff;
    
    int hideSkip;
}
@property(nonatomic, retain)UIImageView *master;
@property(nonatomic, retain)UIImageView *blaze;
@property(nonatomic, retain)UIImageView *blazetextbox;
@property(nonatomic, retain)UIImageView *mastertextbox;
@property(nonatomic, retain)UIImageView *speechbubble;

-(void)counting;

-(IBAction)skip:(id)sender;
-(IBAction)toggle:(id)sender;
@end
