//
//  FinalStageCountdown.m
//  Slide Masters
//
//  Created by Blake Campbell on 11/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FinalStageCountdown.h"
#import "finalstagea.h"
@implementation FinalStageCountdown

-(void)counting{
    mynum = mynum -1;
    countdown.text = [NSString stringWithFormat:@"%i", mynum];
    if (mynum == 0) {
        [timer invalidate];
        // start final removed
        finalstagea *Sword = [[finalstagea alloc] initWithNibName:nil bundle:nil];
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
    
    if (canSound == 0) {
        slidemastersAppDelegate *appDelegate = (slidemastersAppDelegate *)[[UIApplication sharedApplication] delegate];
        [appDelegate stopMusic];
        
        [audioPlayer stop];
        NSURL *url = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/CountdownSound.mp3", [[NSBundle mainBundle] resourcePath]]];
        
        NSError *error;
        audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
        audioPlayer.numberOfLoops = 0;
        if (audioPlayer == nil)
            NSLog(@"not working");
        else
            audioPlayer.currentTime = 0;
        [audioPlayer play];
    }

    
    mynum =3;
    [countdown setFont:[UIFont fontWithName:@"Krona One" size:40]];
    countdown.text = [NSString stringWithFormat:@"%i", mynum];
    timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(counting) userInfo:nil repeats:YES];

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
