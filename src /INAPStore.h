//
//  INAPStore.h
//  Slide Masters
//
//  Created by Blake Campbell on 11/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "theslideshop.h"
#import "Reachability.h"
#import <StoreKit/StoreKit.h>  
#import <AVFoundation/AVFoundation.h>

@interface INAPStore : UIViewController <SKProductsRequestDelegate, SKPaymentTransactionObserver, UIAlertViewDelegate>{
    AVAudioPlayer *audioPlayer;
    int canSound;
    
    int productItem;
    int productPer;
    int canFace;
     UIAlertView *askToFacebook;
    IBOutlet UIButton *buttonOne;
    IBOutlet UIButton *buttonTwo;
    
    IBOutlet UILabel *labelOne;
    IBOutlet UILabel *labelTwo;
    
    IBOutlet UIButton *likeFacebook;
    IBOutlet UIImageView *fTopaz;
    IBOutlet UILabel *fReward;
    
    IBOutlet UILabel *one;
    IBOutlet UILabel *two;
    IBOutlet UILabel *three;
    IBOutlet UILabel *four;
    
    
    
}
-(IBAction)back:(id)sender;
-(BOOL)connected;    

-(IBAction)buy4000:(id)sender;
-(IBAction)buy10000:(id)sender;

@end
