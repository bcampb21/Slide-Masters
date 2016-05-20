//
//  tutslide.h
//  Slide Masters
//
//  Created by Blake Campbell on 2/4/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface tutslide : UIViewController{
    AVAudioPlayer *audioPlayer;
    int canSound;
    
    int number;
    int staydown;
    UIImageView *great;
    UIImageView *ready;
    NSTimer *timer;
    IBOutlet UISlider *slider;
}
@property(nonatomic, retain) IBOutlet UISlider *slider;

@property(nonatomic, retain) IBOutlet UIImageView *great;
@property(nonatomic, retain) IBOutlet UIImageView *ready;
@property(nonatomic, retain)  NSTimer *timer;
-(void)check;
-(void)atme;

@end
