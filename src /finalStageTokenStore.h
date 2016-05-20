//
//  finalStageTokenStore.h
//  Slide Masters
//
//  Created by Blake Campbell on 3/16/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Reachability.h"
#import <StoreKit/StoreKit.h> 
#import <AVFoundation/AVFoundation.h>

@interface finalStageTokenStore : UIViewController <SKProductsRequestDelegate, SKPaymentTransactionObserver, UIAlertViewDelegate>{
    IBOutlet UIButton *buyNow;
    
    AVAudioPlayer *audioPlayer;
    int canSound;
    
    int productItem;
    IBOutlet UILabel *processing;
    
    IBOutlet UILabel *one;
    IBOutlet UILabel *two;
    
    
}
-(IBAction)back:(id)sender;
-(BOOL)connected;
-(IBAction)buyTokens:(id)sender;

@end
