//
//  flexModeCountdown.m
//  Slide Masters
//
//  Created by Blake Campbell on 3/5/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "flexModeCountdown.h"
#import "flexMode.h"
@implementation flexModeCountdown
-(void)counting{
    num++;
    if (num == 1) {
        prompt.hidden = FALSE;
    }
    if (num == 3) {
        prompt1.hidden = FALSE;
    }
    if (num == 5) {
        prompt2.hidden = FALSE;
    }
    if (num == 7) {
        prompt3.hidden = FALSE;
    }
    if (num == 12) {
        prompt.hidden = TRUE;
        prompt1.hidden = TRUE;
        prompt2.hidden = TRUE;
        prompt3.hidden = TRUE;
        ready.hidden = FALSE;
    }
    if (num == 16) {
        canSound =[[NSUserDefaults standardUserDefaults] integerForKey:@"sound"];
        
        if (canSound == 0) {
            NSURL *url = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/flexBegin.mp3", [[NSBundle mainBundle] resourcePath]]];
            
            NSError *error;
            audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
            audioPlayer.numberOfLoops = 0;
            if (audioPlayer == nil)
                NSLog(@"not working");
            else
                audioPlayer.currentTime = 0;
            [audioPlayer play];
        }
        ready.hidden = TRUE;
        numbers.text = [NSString stringWithFormat:@"3"];
        [UIView beginAnimations:nil context:NULL];     
        [UIView setAnimationDuration:.4];
        [UIView setAnimationRepeatCount:1];
        [UIView setAnimationRepeatAutoreverses:NO];
        CGPoint position = CGPointMake(160.0f, 240.0f);
        numbers.center = position;
        [UIView commitAnimations];
    }
    if (num == 19) {
        CGPoint position1 = CGPointMake(160.0f, 500.0f);
        numbers.center = position1;
        numbers.text = [NSString stringWithFormat:@"2"];
        [UIView beginAnimations:nil context:NULL];     
        [UIView setAnimationDuration:.4];
        [UIView setAnimationRepeatCount:1];
        [UIView setAnimationRepeatAutoreverses:NO];
        CGPoint position = CGPointMake(160.0f, 240.0f);
        numbers.center = position;
        [UIView commitAnimations];
    }
    if (num == 22) {
        CGPoint position1 = CGPointMake(160.0f, 500.0f);
        numbers.center = position1;
        numbers.text = [NSString stringWithFormat:@"1"];
        [UIView beginAnimations:nil context:NULL];     
        [UIView setAnimationDuration:.4];
        [UIView setAnimationRepeatCount:1];
        [UIView setAnimationRepeatAutoreverses:NO];
        CGPoint position = CGPointMake(160.0f, 240.0f);
        numbers.center = position;
        [UIView commitAnimations];
    }
    if (num == 25) {
        flexMode *Sword = [[flexMode alloc] initWithNibName:nil bundle:nil];
        [self presentModalViewController:Sword animated:NO];
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
    
    
    [prompt setFont:[UIFont fontWithName:@"Krona One" size:20]];
    [prompt1 setFont:[UIFont fontWithName:@"Krona One" size:20]];
    [prompt2 setFont:[UIFont fontWithName:@"Krona One" size:20]];
    [prompt3 setFont:[UIFont fontWithName:@"Krona One" size:20]];
    [numbers setFont:[UIFont fontWithName:@"Krona One" size:40]];
    [ready setFont:[UIFont fontWithName:@"Krona One" size:20]];
   
    
    backgroundOriginal.hidden = TRUE;
    backgroundOne.hidden = TRUE;
    backgroundTwo.hidden = TRUE;
    backgroundThree.hidden = TRUE;
    backgroundFour.hidden = TRUE;
    backgroundFive.hidden = TRUE;
    backgroundSix.hidden = TRUE;
    backgroundSeven.hidden = TRUE;
    backgroundEight.hidden = TRUE;
    backgroundNine.hidden = TRUE;
    backgroundTen.hidden = TRUE;
    
    int choice =[[NSUserDefaults standardUserDefaults] integerForKey:@"backgroundSelected"];
    if (choice == 0) {
        backgroundOriginal.hidden = FALSE;
    }
    if (choice == 1) {
        backgroundOne.hidden = FALSE;
    }
    if (choice == 2) {
        backgroundTwo.hidden = FALSE;
    }
    if (choice == 3) {
        backgroundThree.hidden = FALSE;
    }
    if (choice == 4) {
        backgroundFour.hidden = FALSE;
    }
    if (choice == 5) {
        backgroundFive.hidden = FALSE;
    }
    if (choice == 6) {
        backgroundSix.hidden = FALSE;
    }
    if (choice == 7) {
        backgroundSeven.hidden = FALSE;
    }
    if (choice == 8) {
        backgroundEight.hidden = FALSE;
    }
    if (choice == 9) {
        backgroundNine.hidden = FALSE;
    }
    if (choice == 10) {
        backgroundTen.hidden = FALSE;
    }

    
    prompt.hidden = TRUE;
    prompt1.hidden = TRUE;
    prompt2.hidden = TRUE;
    prompt3.hidden = TRUE;
    ready.hidden = TRUE;
    
     timer = [NSTimer scheduledTimerWithTimeInterval:.2 target:self selector:@selector(counting) userInfo:nil repeats:YES];    
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
