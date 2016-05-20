//
//  optionsMenu.m
//  Slide Masters
//
//  Created by Blake Campbell on 5/21/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "optionsMenu.h"
#import "slidemastersViewController.h"
#import "TheStory.h"

@implementation optionsMenu

-(IBAction)watchStory:(id)sender{
    TheStory *Sword = [[TheStory alloc] initWithNibName:nil bundle:nil];
    [self presentModalViewController:Sword animated:NO];
    
    
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


-(IBAction)soundOff:(id)sender{
    slidemastersAppDelegate *appDelegate = (slidemastersAppDelegate *)[[UIApplication sharedApplication] delegate];
    [appDelegate stopMusic];    
    
    int off = 1;
    [[NSUserDefaults standardUserDefaults] setInteger:off forKey:@"sound"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    canSound =[[NSUserDefaults standardUserDefaults] integerForKey:@"sound"];
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

    
    soundOffButton.hidden = TRUE;
    soundOnButton.hidden = FALSE;
   
    
}


-(IBAction)soundOn:(id)sender{
    int on = 0;
    [[NSUserDefaults standardUserDefaults] setInteger:on forKey:@"sound"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    canSound =[[NSUserDefaults standardUserDefaults] integerForKey:@"sound"];
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

    
    slidemastersAppDelegate *appDelegate = (slidemastersAppDelegate *)[[UIApplication sharedApplication] delegate];
    [appDelegate qMusic];
    
    soundOffButton.hidden = FALSE;
    soundOnButton.hidden = TRUE;
    
   
    
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
    [[NSUserDefaults standardUserDefaults] setObject:@"optionsMenu" forKey:@"location"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    [scrollCredits setScrollEnabled:YES];
    [scrollCredits setContentSize:CGSizeMake(157,280)];
    
    watchStory.hidden = TRUE;
    selectButton.hidden = TRUE;
    int hello =[[NSUserDefaults standardUserDefaults] integerForKey:@"firstTimePlaying"];
    if (hello == 1) {
        watchStory.hidden = FALSE;
        selectButton.hidden = FALSE;
    }
    
    
    canSound =[[NSUserDefaults standardUserDefaults] integerForKey:@"sound"];

    int sound =[[NSUserDefaults standardUserDefaults] integerForKey:@"sound"];
    if (sound == 0) {
        soundOnButton.hidden = TRUE;
      
    }
    if (sound == 1) {
        soundOffButton.hidden = TRUE;
       
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
