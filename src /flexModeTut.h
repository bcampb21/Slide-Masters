//
//  flexModeTut.h
//  Slide Masters
//
//  Created by Blake Campbell on 6/29/13.
//
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface flexModeTut : UIViewController{
    AVAudioPlayer *audioPlayer;
    int canSound;
    
    IBOutlet UIButton *nextButton;
    
    IBOutlet UILabel *info;
    int number;
    
}
-(IBAction)next:(id)sender;

@end
