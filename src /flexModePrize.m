//
//  flexModePrize.m
//  Slide Masters
//
//  Created by Blake Campbell on 5/16/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "flexModePrize.h"
#import "flexModeMenu.h"
@implementation flexModePrize
@synthesize text,continueButton, sphereButton;



-(IBAction)clickSphere:(id)sender{
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDuration:0.75];
    [sphereButton setAlpha:0];
    sphereButton.enabled = FALSE;
    [text setAlpha:0];
    [masterTokens setAlpha:0];
    [masterTokens2 setAlpha:0];
    [topaz setAlpha:0];
    [background setAlpha:0];
    [prizeDescription setAlpha:0];
    [backgroundImage setAlpha:0];
    [UIView commitAnimations];
    timer = [NSTimer scheduledTimerWithTimeInterval:.1 target:self selector:@selector(boom) userInfo:nil repeats:YES];
  
}
-(void)boom{
    time++;
    if (time == 2) {
        int num = arc4random() % 100 + 1;
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDelegate:self];
        [UIView setAnimationDuration:1.5];
               
        text.text = [NSString stringWithFormat:@"The sphere contained..."];
        if (num <= 5) {
            int owned =[[NSUserDefaults standardUserDefaults] integerForKey:@"backgroundSixOwn"];
            if (owned == 0) {
                background.hidden = FALSE;
                [background setAlpha:1];
                int get = 1;
                [[NSUserDefaults standardUserDefaults] setInteger:get forKey:@"backgroundSixOwn"];  
                [[NSUserDefaults standardUserDefaults] synchronize];
                 prizeDescription.text = [NSString stringWithFormat:@"Cosmic Circle background!"];
            }
            if (owned == 1) {
                num = 20;
            }

        }
        
        if (num > 5 && num <= 25) {
            int a =[[NSUserDefaults standardUserDefaults] integerForKey:@"firstFinal"];
            if (a == 0) {
                num = 30;
            }
        }
        
        if (num > 5 && num <= 25) {
             masterTokens.hidden = FALSE;
            [masterTokens setAlpha:1];
            [masterTokens2 setAlpha:1];
            int a = [[NSUserDefaults standardUserDefaults] integerForKey:@"tokens"];
            int ftw = arc4random() % 2 + 1;
            if (ftw == 1) {
                a++;
                [[NSUserDefaults standardUserDefaults] setInteger:ftw forKey:@"tokens"];  
                [[NSUserDefaults standardUserDefaults] synchronize];
                prizeDescription.text = [NSString stringWithFormat:@"A Master Token!"];
            }
            if (ftw == 2) {
                masterTokens2.hidden = FALSE;
                a = a + 2;
                [[NSUserDefaults standardUserDefaults] setInteger:ftw forKey:@"tokens"];  
                [[NSUserDefaults standardUserDefaults] synchronize];
                prizeDescription.text = [NSString stringWithFormat:@"+2 Master Tokens!"];
            }
        }
        if (num > 25) {
            [topaz setAlpha:1];
             topaz.hidden = FALSE;
            int ran = arc4random() % 100 + 1;
            int currentcoin =[[NSUserDefaults standardUserDefaults] floatForKey:@"coins"];
            if (ran >= 80) {
                prizeDescription.text = [NSString stringWithFormat:@"+200 Topaz!"];
                currentcoin = currentcoin + 200;
                [[NSUserDefaults standardUserDefaults] setInteger:currentcoin forKey:@"coins"];  
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            if (ran < 80 && ran >=50) {
                prizeDescription.text = [NSString stringWithFormat:@"+100 Topaz!"];
                currentcoin = currentcoin + 200;
                [[NSUserDefaults standardUserDefaults] setInteger:currentcoin forKey:@"coins"];  
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            if (ran < 50) {
                prizeDescription.text = [NSString stringWithFormat:@"+50 Topaz!"];
                currentcoin = currentcoin + 200;
                [[NSUserDefaults standardUserDefaults] setInteger:currentcoin forKey:@"coins"];  
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
        }
        [prizeDescription setAlpha:1];
        [backgroundImage setAlpha:1];
        [UIView commitAnimations];
    }
    if (time == 15) {
        continueButton.hidden = FALSE;
         [timer invalidate];
    }
    
}
-(IBAction)continueButton:(id)sender{
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

    flexModeMenu *Sword = [[flexModeMenu alloc] initWithNibName:nil bundle:nil];
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
    canSound =[[NSUserDefaults standardUserDefaults] integerForKey:@"sound"];
    
    [text setFont:[UIFont fontWithName:@"Krona One" size:14]];
    [prizeDescription setFont:[UIFont fontWithName:@"Krona One" size:15]];
    continueButton.hidden = TRUE;
    text.text = [NSString stringWithFormat:@"Tap the sphere!"];
    prizeDescription.text = [NSString stringWithFormat:@""];
    
    topaz.hidden = TRUE;
    masterTokens.hidden = TRUE;
    masterTokens2.hidden = TRUE;
    background.hidden = TRUE;
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
