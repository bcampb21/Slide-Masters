//
//  tutslide.m
//  Slide Masters
//
//  Created by Blake Campbell on 2/4/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "tutslide.h"
#import "levelselect.h"
@implementation tutslide
@synthesize slider,great,timer, ready;

-(void)check {
    if (staydown >= 1) {
        slider.value = 1;
    }
    if (slider.value < 1) {
        slider.value =1;
    }
    if (slider.value > 99) {
        slider.value =99;
    }
    
    if (slider.value < 4) {
        slider.value = 1;
        staydown ++;
        if (staydown == 1) {
            if (canSound == 0) {
                [audioPlayer play];
            }
        [UIView beginAnimations:nil context:NULL];     
        [UIView setAnimationDuration:.3];
        [UIView setAnimationRepeatCount:1];
        [UIView setAnimationRepeatAutoreverses:NO];
        CGPoint position = CGPointMake(160.0f, 142.0f);
        great.center = position;
        [UIView commitAnimations];
        number = 0;
        }
    }
    
}
-(void)atme{
    number ++;
    if (number == 4) {
        [UIView beginAnimations:nil context:NULL];     
        [UIView setAnimationDuration:3.0];
        [UIView setAnimationRepeatCount:1.0];
        [UIView setAnimationRepeatAutoreverses:NO];
        CGPoint position = CGPointMake(189.0f, 142.0f);
        great.center = position;
        [UIView commitAnimations];
    }
    if (number == 34) {
        [UIView beginAnimations:nil context:NULL];     
        [UIView setAnimationDuration:.2];
        [UIView setAnimationRepeatCount:1];
        [UIView setAnimationRepeatAutoreverses:NO];
        CGPoint position = CGPointMake(510.0f, 142.0f);
        great.center = position;
        [UIView commitAnimations];
    }
    if (number == 36) {
        [UIView beginAnimations:nil context:NULL];     
        [UIView setAnimationDuration:.3];
        [UIView setAnimationRepeatCount:1];
        [UIView setAnimationRepeatAutoreverses:NO];
        CGPoint position = CGPointMake(160.0f, 284.0f);
        ready.center = position;
        [UIView commitAnimations];
    }
    if (number == 39) {
        [UIView beginAnimations:nil context:NULL];     
        [UIView setAnimationDuration:3.0];
        [UIView setAnimationRepeatCount:1.0];
        [UIView setAnimationRepeatAutoreverses:NO];
        CGPoint position = CGPointMake(130.0f, 284.0f);
        ready.center = position;
        [UIView commitAnimations];
    }
    if (number == 69) {
        [UIView beginAnimations:nil context:NULL];     
        [UIView setAnimationDuration:.2];
        [UIView setAnimationRepeatCount:1];
        [UIView setAnimationRepeatAutoreverses:NO];
        CGPoint position = CGPointMake(-192.0f, 284.0f);
        ready.center = position;
        [UIView commitAnimations];
    }
    
    
    if (number == 71){
        levelselect *Sword = [[levelselect alloc] initWithNibName:nil bundle:nil];
        //Sword.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
       // [self presentModalViewController:Sword animated:YES];
        
        [UIView beginAnimations:@"flipview" context:nil];
        [UIView setAnimationDuration:.3];
        [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
        [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:self.view cache:YES];
        
        
        [self presentModalViewController:Sword animated:YES];
        [UIView commitAnimations];

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
    NSURL *url = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/popSound.wav", [[NSBundle mainBundle] resourcePath]]]; /// SlideMastersThemeV1.mp3
	
	NSError *error;
	audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
	audioPlayer.numberOfLoops = 0;
	
	if (audioPlayer == nil)
		NSLog(@"not working");
	else
        audioPlayer.currentTime = 0;
    
    number = 200;
    timer = [NSTimer scheduledTimerWithTimeInterval:.1 target:self selector:@selector(atme) userInfo:nil repeats:YES];
    
    CGRect frame = CGRectMake(-55, 210, 430, 59);
    slider = [[UISlider alloc] initWithFrame:frame];
    [slider addTarget:self action:@selector(check) forControlEvents:UIControlEventValueChanged];
    // in case the parent view draws with a custom color or gradient, use a transparent color
    slider.backgroundColor = [UIColor clearColor];
    [self.slider setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
     forState:UIControlStateNormal];
    [self.slider setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
     forState:UIControlStateNormal];
    [slider setThumbImage: [UIImage imageNamed:@"downslide.png"] forState:UIControlStateNormal];
    
    slider.minimumValue = 0.0;
    slider.maximumValue = 100;
    slider.continuous = YES;
    slider.value = 99.0;
    slider.transform = CGAffineTransformRotate(slider.transform, 270.00/180*M_PI);
    
    [self.view addSubview:slider];
    
    great.image = [UIImage imageNamed:@"great.png"];
    ready.image = [UIImage imageNamed:@"youreready.png"];
    [self.view addSubview:great];
    [self.view addSubview:ready];


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
