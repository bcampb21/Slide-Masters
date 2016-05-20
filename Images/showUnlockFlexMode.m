//
//  showUnlockFlexMode.m
//  Slide Masters
//
//  Created by Blake Campbell on 5/23/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "showUnlockFlexMode.h"
#import "levelselect.h"

@implementation showUnlockFlexMode
@synthesize background, next;


-(void) counting{
    time++;
    if (time == 1) {
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDelegate:self];
        [UIView setAnimationDuration:0.75];
        [background setAlpha:1];
        [flexModeUnlocked setAlpha:1];
        [flexModeDescription setAlpha:1];
        [flexArrow setAlpha:1];
        [arrow setAlpha:1];
        [UIView commitAnimations];
    }
    if (time == 10) {
        [UIButton beginAnimations:nil context:NULL];     
        [UIButton setAnimationDuration:.3];
        [UIButton setAnimationRepeatCount:1];
        [UIButton setAnimationRepeatAutoreverses:NO];
        
        CGPoint position1 = CGPointMake(160.0f, 430.0f);
        next.center = position1;
        [UIButton commitAnimations];
        [myTimer invalidate];
    }
       
}

-(IBAction)next:(id)sender{
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

    [myTimer invalidate];
    levelselect *Sword = [[levelselect alloc] initWithNibName:nil bundle:nil];
    [self presentModalViewController:Sword animated:NO];
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
    [flexModeUnlocked setFont:[UIFont fontWithName:@"Krona One" size:40]];
    [flexModeDescription setFont:[UIFont fontWithName:@"Krona One" size:12]];
    
    canSound =[[NSUserDefaults standardUserDefaults] integerForKey:@"sound"];
    
    [background setAlpha:0];
    [flexModeUnlocked setAlpha:0];
    [flexModeDescription setAlpha:0];
    [flexArrow setAlpha:0];
    [arrow setAlpha:0];
    
    myTimer = [NSTimer scheduledTimerWithTimeInterval:.1 target:self selector:@selector(counting) userInfo:nil repeats:YES];
    int un = 1;
    [[NSUserDefaults standardUserDefaults] setInteger:un forKey:@"flexIsUnlocked"];  
    [[NSUserDefaults standardUserDefaults] synchronize];
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
