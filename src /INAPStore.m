//
//  INAPStore.m
//  Slide Masters
//
//  Created by Blake Campbell on 11/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "INAPStore.h"

@implementation INAPStore

-(IBAction)back:(id)sender{
    if (canSound == 0) {
        [audioPlayer stop];
        NSURL *url = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/swishSound.mp3", [[NSBundle mainBundle] resourcePath]]];
        
        NSError *error;
        audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
        audioPlayer.numberOfLoops = 0;
        if (audioPlayer == nil)
            NSLog(@"not working");
        else
            audioPlayer.currentTime = 0;
        [audioPlayer play];
    }

    theslideshop *Sword = [[theslideshop alloc] initWithNibName:nil bundle:nil];
    [self presentModalViewController:Sword animated:NO];

}
- (BOOL)connected{
    Reachability *reachability = [Reachability reachabilityForInternetConnection];  
    NetworkStatus networkStatus = [reachability currentReachabilityStatus]; 
    return !(networkStatus == NotReachable);
}

-(void)paymentQueue:(SKPaymentQueue *)queue updatedTransactions:(NSArray *)transactions {
    for (SKPaymentTransaction *transaction in transactions) {
        switch (transaction.transactionState) {
            case SKPaymentTransactionStatePurchasing:{
                
                
                break;
            }
            case SKPaymentTransactionStatePurchased:{
                NSLog(@ "DOne");
                [[SKPaymentQueue defaultQueue] finishTransaction:transaction];
                
                // remove wait view and unlock feature 2
                if (productItem == 1 && productPer == 1) {
                    productPer = productPer - 1;
                    //add 4000 topaz
                    int topaz =[[NSUserDefaults standardUserDefaults] integerForKey:@"coins"];
                    topaz = topaz + 4000;
                    [[NSUserDefaults standardUserDefaults] setInteger:topaz forKey:@"coins"];  
                    [[NSUserDefaults standardUserDefaults] synchronize];
                    
                    UIAlertView *tmp = [[UIAlertView alloc] 
                                        initWithTitle:@"Purchase Complete" 
                                        message:@"You have recieved 4,000 topaz"
                                        delegate:self 
                                        cancelButtonTitle:nil 
                                        otherButtonTitles:@"Ok", nil]; 
                    [tmp show];
                
                }
                
                if (productItem == 2 && productPer == 1) {
                    productPer = productPer - 1;
                    //add 10000 topaz
                    int topaz =[[NSUserDefaults standardUserDefaults] integerForKey:@"coins"];
                    topaz = topaz + 10000;
                    [[NSUserDefaults standardUserDefaults] setInteger:topaz forKey:@"coins"];  
                    [[NSUserDefaults standardUserDefaults] synchronize];
                   
                    UIAlertView *tmp = [[UIAlertView alloc] 
                                        initWithTitle:@"Purchase Complete" 
                                        message:@"You have recieved 10,000 topaz"
                                        delegate:self 
                                        cancelButtonTitle:nil 
                                        otherButtonTitles:@"Ok", nil]; 
                    [tmp show];
                }
                
                buttonOne.hidden = FALSE;
                buttonTwo.hidden = FALSE;
                
                
                
                // do other thing to enable the features
                
                break;
            }  
                /*case SKPaymentTransactionStateRestored:{
                 [[SKPaymentQueue defaultQueue] finishTransaction:transaction];
                 // remove wait view here
                 
                 break;
                 }*/
            case SKPaymentTransactionStateFailed:{
                
                if (transaction.error.code != SKErrorPaymentCancelled) {
                    NSLog(@"Error payment cancelled");
                }
                [[SKPaymentQueue defaultQueue] finishTransaction:transaction];
                
                    labelOne.hidden = TRUE;
                    buttonOne.hidden = FALSE;               
                    labelTwo.hidden = TRUE;
                    buttonTwo.hidden = FALSE;
               
                
                break;
            }
            default:{
                break;}
        }
    }
}


-(void)request:(SKRequest *)request didFailWithError:(NSError *)error  
{  
    NSLog(@"Failed to connect with error: %@", [error localizedDescription]);  
}  


-(void)productsRequest:(SKProductsRequest *)request didReceiveResponse:(SKProductsResponse *)response  
{  
    
    labelOne.hidden = TRUE;
    buttonOne.hidden = TRUE;               
    labelTwo.hidden = TRUE;
    buttonTwo.hidden = TRUE;
    
    SKProduct *validProduct = nil;
    int count = [response.products count];
    if (count>0) {
        validProduct = [response.products objectAtIndex:0];
        if (productItem == 1) {
            
            SKMutablePayment *payment = [[SKMutablePayment alloc] init];
            payment.productIdentifier = @"com.blakecampbell.SlideMasters.BagofTopaz";
            payment.quantity = 1;
            [[SKPaymentQueue defaultQueue] addTransactionObserver:self];
            [[SKPaymentQueue defaultQueue] addPayment:payment];
        }
        if (productItem == 2) {
            
            SKMutablePayment *payment = [[SKMutablePayment alloc] init];
            payment.productIdentifier = @"com.blakecampbell.SlideMasters.ChestofTopaz";
            payment.quantity = 1;
            [[SKPaymentQueue defaultQueue] addTransactionObserver:self];
            [[SKPaymentQueue defaultQueue] addPayment:payment];
        }
               
        
        
    } else {
        UIAlertView *tmp = [[UIAlertView alloc] 
                            initWithTitle:@"Not Available" 
                            message:@"No products to purchase"
                            delegate:self 
                            cancelButtonTitle:nil 
                            otherButtonTitles:@"Ok", nil]; 
        [tmp show];
        
    }
    
    
}  

-(IBAction)buy4000:(id)sender{
    productPer = 1;
    if(![self connected]) {
        // not connected
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"No internet connection found" 
                                                        message:@"Connect to the internet to enjoy this awesome feature!" 
                                                       delegate:nil 
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    } 
    if([self connected]){
        buttonOne.hidden = TRUE;
        buttonTwo.hidden = TRUE;
     
            labelOne.hidden = FALSE;
            buttonOne.hidden = TRUE;
      
        if ([SKPaymentQueue canMakePayments]) {
            productItem = 1;
            SKProductsRequest *request = [[SKProductsRequest alloc] initWithProductIdentifiers:[NSSet setWithObject:@"com.blakecampbell.SlideMasters.BagofTopaz"]];
            request.delegate = self;  
            [request start];  
            
            
        } else {
            UIAlertView *tmp = [[UIAlertView alloc] 
                                initWithTitle:@"Prohibited" 
                                message:@"Parental Control is enabled, cannot make a purchase!"
                                delegate:self 
                                cancelButtonTitle:nil 
                                otherButtonTitles:@"Ok", nil]; 
            [tmp show];
        }

    }
    
}

-(IBAction)buy10000:(id)sender{
    likeFacebook.hidden = TRUE;
    fTopaz.hidden = TRUE;
    fReward.hidden = TRUE;
    
    productPer = 1;
    
    if(![self connected]) {
        // not connected
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"No internet connection found" 
                                                        message:@"Connect to the internet to enjoy this awesome feature!" 
                                                       delegate:nil 
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
        
    } 
    else{
   
            labelTwo.hidden = FALSE;
            buttonTwo.hidden = TRUE;
    
        buttonOne.hidden = TRUE;
        buttonTwo.hidden = TRUE;
        if ([SKPaymentQueue canMakePayments]) { 
            productItem = 2;
            SKProductsRequest *request = [[SKProductsRequest alloc] initWithProductIdentifiers:[NSSet setWithObject:@"com.blakecampbell.SlideMasters.ChestofTopaz"]];  
            request.delegate = self;  
            [request start];  
            
            
        } else {
            UIAlertView *tmp = [[UIAlertView alloc] 
                                initWithTitle:@"Prohibited" 
                                message:@"Parental Control is enabled, cannot make a purchase!"
                                delegate:self 
                                cancelButtonTitle:nil 
                                otherButtonTitles:@"Ok", nil]; 
            [tmp show];
        }
        
    }

    
}

-(IBAction)facebook:(id)sender{
    canFace =[[NSUserDefaults standardUserDefaults] integerForKey:@"didFacebook"];
    
    if(![self connected]) {
        // not connected
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"No internet connection found"
                                                        message:@"Connect to the internet to enjoy this awesome feature!"
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    }
    else{
        if (canFace == 0) {
            askToFacebook = [[UIAlertView alloc]
                             initWithTitle:@"Like Slide Masters on Facebook!"
                             message:@"Like Slide Masters on Facebook and earn 1000 Topaz?"
                             delegate:self
                             cancelButtonTitle:nil
                             otherButtonTitles:@"No", @"Yes", nil];
            askToFacebook.delegate = self;
            [askToFacebook show];
        }
    }
    
    
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (alertView == askToFacebook) {
        if (buttonIndex == 1) {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://m.facebook.com/login.php?next=http%3A%2F%2Fm.facebook.com%2FSlideMasters%3Fid%3D204409123047568%26refsrc%3Dhttp%253A%252F%252Fwww.facebook.com%252FSlideMasters&refsrc=http%3A%2F%2Fwww.facebook.com%2FSlideMasters&refid=17"]];
            
            int topaz =[[NSUserDefaults standardUserDefaults] integerForKey:@"coins"];
            topaz = topaz + 1000;
            [[NSUserDefaults standardUserDefaults] setInteger:topaz forKey:@"coins"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            canFace = 1;
            [[NSUserDefaults standardUserDefaults] setInteger:canFace forKey:@"didFacebook"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
        }
        
    }
    
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    [[NSUserDefaults standardUserDefaults] setObject:@"IAPStore" forKey:@"location"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    canSound =[[NSUserDefaults standardUserDefaults] integerForKey:@"sound"];
    
    labelOne.hidden = TRUE;
    labelTwo.hidden = TRUE;
    
    [fReward setFont:[UIFont fontWithName:@"Krona One" size:10]];
    [one setFont:[UIFont fontWithName:@"Krona One" size:14]];
    [two setFont:[UIFont fontWithName:@"Krona One" size:14]];
    [three setFont:[UIFont fontWithName:@"Krona One" size:14]];
    [four setFont:[UIFont fontWithName:@"Krona One" size:14]];
    
    canFace =[[NSUserDefaults standardUserDefaults] integerForKey:@"didFacebook"];
    if (canFace == 1) {
        likeFacebook.hidden = TRUE;
        fTopaz.hidden = TRUE;
        fReward.hidden = TRUE;
    }
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
