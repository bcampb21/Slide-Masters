//
//  tutSlideTwo.h
//  Slide Masters
//
//  Created by Blake Campbell on 6/24/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface tutSlideTwo : UIViewController{
    AVAudioPlayer *audioPlayer;
    int canSound;
    
    int number;
    int staydown;
    UIImageView *great;
    UIImageView *ready;
    NSTimer *timer;
    IBOutlet UISlider *slider;
    IBOutlet UISlider *slider1;
    int slidesCompleted;
    int perca;
}
@property(nonatomic, retain) IBOutlet UISlider *slider;
@property(nonatomic, retain) IBOutlet UISlider *slider1;

@property(nonatomic, retain) IBOutlet UIImageView *great;
@property(nonatomic, retain) IBOutlet UIImageView *ready;
@property(nonatomic, retain)  NSTimer *timer;

-(void)check1;
-(void)check;
-(void)atme;


@end
