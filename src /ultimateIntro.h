//
//  ultimateIntro.h
//  Slide Masters
//
//  Created by Blake Campbell on 3/31/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import "slidemastersAppDelegate.h"

@interface ultimateIntro : UIViewController{
    AVAudioPlayer *audioPlayer;
    int canSound;
    
    slidemastersAppDelegate *appdelegate;
    
    IBOutlet UIImageView *master;
    IBOutlet UIImageView *textBox;
    IBOutlet UILabel *text;
    NSTimer *timer;
    int count;
    int method;
    IBOutlet UILabel *tokenText;
    IBOutlet UIImageView *token;
    IBOutlet UIImageView *tokenBorder;
    IBOutlet UIImageView *mastersToken;
    IBOutlet UIImageView *backG;
    int tokenTimes;
} 
@property(nonatomic, retain) IBOutlet UIImageView *master;
@property(nonatomic, retain) IBOutlet UIImageView *textBox;
@property(nonatomic, retain) IBOutlet UILabel *text;
@property(nonatomic, retain) IBOutlet UILabel *tokenText;
@property(nonatomic, retain) IBOutlet UIImageView *token;
@property(nonatomic, retain) IBOutlet UIImageView *tokenBorder;
@property(nonatomic, retain) IBOutlet UIImageView *mastersToken;
@property(nonatomic, retain) IBOutlet UIImageView *backG;

@end
