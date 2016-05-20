//
//  optionsMenu.h
//  Slide Masters
//
//  Created by Blake Campbell on 5/21/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface optionsMenu : UIViewController{
    AVAudioPlayer *audioPlayer;
    int canSound;
    
    IBOutlet UIScrollView *scrollCredits;
    
    IBOutlet UIButton *soundOnButton;
    IBOutlet UIButton *soundOffButton;
    
    IBOutlet UIButton *selectButton;
    IBOutlet UILabel *watchStory;
    
    
}
-(IBAction)back:(id)sender;
-(IBAction)soundOff:(id)sender;
-(IBAction)soundOn:(id)sender;
-(IBAction)watchStory:(id)sender;

@end
