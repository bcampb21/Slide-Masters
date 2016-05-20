//
//  flexModeStats.h
//  Slide Masters
//
//  Created by Blake Campbell on 6/4/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface flexModeStats : UIViewController{
    AVAudioPlayer *audioPlayer;
    int canSound;
    //Backgrounds
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
    
    IBOutlet UILabel *highestScore;
    IBOutlet UILabel *highestCombo;
    IBOutlet UILabel *secondWindsLabel;
    IBOutlet UILabel *gamesPlayedLabel;
    IBOutlet UILabel *timePlayedLabel;
    
    int hours;
    int minutes;
    
    int major;
    
}
-(IBAction)back:(id)sender;
@end
