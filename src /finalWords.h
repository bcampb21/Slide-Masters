//
//  finalWords.h
//  Slide Masters
//
//  Created by Blake Campbell on 6/4/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import "slidemastersAppDelegate.h"

@interface finalWords : UIViewController{
    AVAudioPlayer *audioPlayer;
    int canSound;
    
    slidemastersAppDelegate *appdelegate;
    
    NSTimer *timer;
    IBOutlet UIImageView *slideMaster;
    IBOutlet UIImageView *blaze;
    IBOutlet UIImageView *slideMasterBox;
    IBOutlet UIImageView *blazeBox;
    IBOutlet UILabel *textLabel;
    int step;
    int count;
}

@end
