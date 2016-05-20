//
//  finalStageTutorial.m
//  Slide Masters
//
//  Created by Blake Campbell on 6/4/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "finalStageTutorial.h"
#import "FinalStage.h"
#define IS_WIDESCREEN ( fabs( ( double )[ [ UIScreen mainScreen ] bounds ].size.height - ( double )568 )< DBL_EPSILON )

@implementation finalStageTutorial


-(IBAction)next:(id)sender{
    wordIndex++;
    if (wordIndex == 2) {
        words.text = [NSString stringWithFormat:@"Touch the slider and it is and instant fail"];
    }
    if (wordIndex == 3) {
        badThumb.hidden = TRUE;
        badTrack.hidden = TRUE;
        masterToken1.hidden = FALSE;
        masterToken2.hidden = FALSE;
        masterToken3.hidden = FALSE;
        words.text = [NSString stringWithFormat:@"It costs 1 Master Token per try"];
    }
    if (wordIndex == 4) {
        words.text = [NSString stringWithFormat:@"Master Tokens are very rare and hard to find"];
    }
    if (wordIndex == 5) {
        words.text = [NSString stringWithFormat:@"Mystery Spheres in Flex Mode can give you more"];
    }
    if (wordIndex == 6) {
        words.text = [NSString stringWithFormat:@"Finding them in the spheres is rare"];
    }
    if (wordIndex == 7) {
        masterToken1.hidden = TRUE;
        masterToken2.hidden = TRUE;
        masterToken3.hidden = TRUE;
        slider1.hidden = FALSE;
        slider2.hidden = FALSE;
        slider3.hidden = FALSE;
        words.text = [NSString stringWithFormat:@"All cosmetic changes have been disabled for this section only"];
    }

    if (wordIndex == 8) {
        FinalStage *Sword = [[FinalStage alloc] initWithNibName:nil bundle:nil];
        [self presentModalViewController:Sword animated:NO]; 
    }
    [self moveWords];

    
}


-(void)moveWords{
    if (IS_WIDESCREEN) {
        CGPoint position1 = CGPointMake(-100.0f, 350.0f);
        words.center = position1;
    }
    else{
        CGPoint position1 = CGPointMake(-100.0f, 282.0f);
        words.center = position1;
    }    
    [UILabel beginAnimations:nil context:NULL];     
    [UILabel setAnimationDuration:.3];
    [UILabel setAnimationRepeatCount:1];
    [UILabel setAnimationRepeatAutoreverses:NO];
    if (IS_WIDESCREEN) {
        CGPoint position = CGPointMake(160.0f, 350.0f);
        words.center = position;
    }
    else{
        CGPoint position = CGPointMake(160.0f, 282.0f);
        words.center = position;
    }
    [UIButton commitAnimations];
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
    if (canSound == 0){
        slidemastersAppDelegate *appDelegate = (slidemastersAppDelegate *)[[UIApplication sharedApplication] delegate];
        [appDelegate qMusic];
    }
    
    [masterLabel setFont:[UIFont fontWithName:@"Krona One" size:20]];
    [words setFont:[UIFont fontWithName:@"Krona One" size: 14]];
    
    masterToken1.hidden = TRUE;
     masterToken2.hidden = TRUE;
     masterToken3.hidden = TRUE;
    slider1.hidden = TRUE;
    slider2.hidden = TRUE;
    slider3.hidden = TRUE;
    wordIndex = 1;
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
