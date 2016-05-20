//
//  finalStageTokenStore.m
//  Slide Masters
//
//  Created by Blake Campbell on 3/16/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "finalStageTokenStore.h"
#import "FinalStage.h"
@implementation finalStageTokenStore

-(IBAction)back:(id)sender{
    FinalStage *Sword = [[FinalStage alloc] initWithNibName:nil bundle:nil];
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
                
                [[SKPaymentQueue defaultQueue] finishTransaction:transaction];
                
                // remove wait view and unlock feature 2
                if (productItem == 1) {
                    //add Tokens
                    int tokens =[[NSUserDefaults standardUserDefaults] integerForKey:@"tokens"];
                    tokens = tokens + 5;
                    [[NSUserDefaults standardUserDefaults] setInteger:tokens forKey:@"tokens"];
                    [[NSUserDefaults standardUserDefaults] synchronize];
                    
                    UIAlertView *tmp = [[UIAlertView alloc] 
                                        initWithTitle:@"Purchase Complete" 
                                        message:@"You have recieved 5 Master Tokens!"
                                        delegate:self 
                                        cancelButtonTitle:nil 
                                        otherButtonTitles:@"Ok", nil]; 
                    [tmp show];
                    
                }
                
                                
                buyNow.hidden = FALSE;
                processing.hidden = TRUE;
                
                
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
                
                processing.hidden = TRUE;
                buyNow.hidden = FALSE;
                
                
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
    
    buyNow.hidden = TRUE;
    processing.hidden = FALSE;
    
    SKProduct *validProduct = nil;
    int count = [response.products count];
    
    if (count>0) {
        validProduct = [response.products objectAtIndex:0];
        
        if (productItem == 1) {
            
            SKMutablePayment *payment = [[SKMutablePayment alloc] init];
            payment.productIdentifier = @"com.blakecampbell.SlideMasters.SetofMasterTokens";
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
        buyNow.hidden = FALSE;
        processing.hidden = TRUE;
        
    }
    
    
}

-(IBAction)buyTokens:(id)sender{
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
        
        buyNow.hidden = TRUE;
        processing.hidden = FALSE;
        
        if ([SKPaymentQueue canMakePayments]) { 
            productItem = 1;
            SKProductsRequest *request = [[SKProductsRequest alloc] initWithProductIdentifiers:[NSSet setWithObject:@"com.blakecampbell.SlideMasters.SetofMasterTokens"]];  
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
            buyNow.hidden = FALSE;
            processing.hidden = TRUE;
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
    canSound =[[NSUserDefaults standardUserDefaults] integerForKey:@"sound"];
    
    [one setFont:[UIFont fontWithName:@"Krona One" size:14]];
    [two setFont:[UIFont fontWithName:@"Krona One" size:14]];
    processing.hidden = TRUE;
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
