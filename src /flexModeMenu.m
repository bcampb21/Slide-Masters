//
//  flexModeMenu.m
//  Slide Masters
//
//  Created by Blake Campbell on 3/5/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "flexModeMenu.h"
#import "flexModeCountdown.h"
#import "slidemastersViewController.h"
#import "flexModeStats.h"
#import "flexLevelRewardChart.h"
#import "flexModeTut.h"
#import "theslideshop.h"

@implementation flexModeMenu
@synthesize play, stats, upgrade;

-(IBAction)rewards:(id)sender{
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

    flexLevelRewardChart *Sword = [[flexLevelRewardChart alloc] initWithNibName:nil bundle:nil];
    [self presentModalViewController:Sword animated:NO];
}

-(IBAction)tut:(id)sender{
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

    flexModeTut *Sword = [[flexModeTut alloc] initWithNibName:nil bundle:nil];
    [self presentModalViewController:Sword animated:NO];

}
-(IBAction)store:(id)sender{
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

    int toFlex = 1;
    [[NSUserDefaults standardUserDefaults] setInteger:toFlex forKey:@"fromFlex"];  
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    theslideshop *Sword = [[theslideshop alloc] initWithNibName:nil bundle:nil];
    [self presentModalViewController:Sword animated:NO];
}

-(IBAction)stats:(id)sender{
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

    flexModeStats *Sword = [[flexModeStats alloc] initWithNibName:nil bundle:nil];
    [self presentModalViewController:Sword animated:NO];
    
}

-(IBAction)flexLeaderboard:(id)sender{
    GKLeaderboardViewController *leaderboardController = [[GKLeaderboardViewController alloc] init];
    if (leaderboardController != nil)
    {  
        leaderboardController.leaderboardDelegate = self;
        leaderboardController.timeScope = GKLeaderboardTimeScopeToday;
        leaderboardController.category = @"kjnfl34";
        [self presentViewController: leaderboardController animated: YES completion:nil];
    } 
    
}

- (void)leaderboardViewControllerDidFinish:(GKLeaderboardViewController *)viewController
{
    [self dismissViewControllerAnimated:YES completion:nil];
}



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

    slidemastersViewController *Sword = [[slidemastersViewController alloc] initWithNibName:nil bundle:nil];
    [self presentModalViewController:Sword animated:NO];
    
}

-(IBAction)play:(id)sender{
    slidemastersAppDelegate *appDelegate = (slidemastersAppDelegate *)[[UIApplication sharedApplication] delegate];
    [appDelegate stopMusic];
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

    flexModeCountdown *Sword = [[flexModeCountdown alloc] initWithNibName:nil bundle:nil];
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
    [[NSUserDefaults standardUserDefaults] setObject:@"flexModeMenu" forKey:@"location"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    maxLevelReached.hidden = TRUE;
    
    int toFlex = 0;
    [[NSUserDefaults standardUserDefaults] setInteger:toFlex forKey:@"fromFlex"];  
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    canSound =[[NSUserDefaults standardUserDefaults] integerForKey:@"sound"];
    
    int moneys = [[NSUserDefaults standardUserDefaults] integerForKey:@"coins"];
    topaz.text = [NSString stringWithFormat:@"%i",moneys];
    [topaz setFont:[UIFont fontWithName:@"Krona One" size:14]];
    [flexLevelLabel setFont:[UIFont fontWithName:@"Krona One" size:38]];
    
    
    currentExp = [[NSUserDefaults standardUserDefaults] integerForKey:@"currentExp"];
    maxExp = [[NSUserDefaults standardUserDefaults] integerForKey:@"maxExp"];
    flexLevel = [[NSUserDefaults standardUserDefaults] integerForKey:@"flexLevel"];
    
    if (flexLevel >= 50) {
        expBar.hidden = TRUE;
        expLeft.hidden = TRUE;
        
        maxLevelReached.hidden = FALSE;
    }
    
    if (maxExp == 0) {
        maxExp = 100;
        [[NSUserDefaults standardUserDefaults] setInteger:maxExp forKey:@"maxExp"];  
        [[NSUserDefaults standardUserDefaults] synchronize];
        flexLevel = 1;
        [[NSUserDefaults standardUserDefaults] setInteger:flexLevel forKey:@"flexLevel"];  
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
    toGo = maxExp - currentExp;
    flexLevelLabel.text = [NSString stringWithFormat:@"Flex Level:  %i",flexLevel];
    expLeft.text = [NSString stringWithFormat:@"%i to go!",toGo];
    
    expBar.progress = (double)currentExp/maxExp;
    
    
    int a =[[NSUserDefaults standardUserDefaults] integerForKey:@"firstFlex"];
    if (a == 0) {
        int chance = 33;
        [[NSUserDefaults standardUserDefaults] setInteger:chance forKey:@"secondWindChance"];  
        [[NSUserDefaults standardUserDefaults] synchronize];
        int cost = 5;
        [[NSUserDefaults standardUserDefaults] setInteger:cost forKey:@"secondWindChanceCost"];  
        [[NSUserDefaults standardUserDefaults] synchronize];
        int hey = 1;
        [[NSUserDefaults standardUserDefaults] setInteger:hey forKey:@"firstFlex"];  
        [[NSUserDefaults standardUserDefaults] synchronize];

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
