//
//  tutSlideTwo.m
//  Slide Masters
//
//  Created by Blake Campbell on 6/24/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "tutSlideTwo.h"
#import "levelfive.h"
@implementation tutSlideTwo
@synthesize slider,great,timer, ready, slider1;


-(void) check{
    if (slider.value <= 3) {
        [UIView beginAnimations:nil context:NULL];     
        [UIView setAnimationDuration:.285];
        [UIView setAnimationRepeatCount:1];
        [UIView setAnimationRepeatAutoreverses:NO];
        CGPoint position = CGPointMake(102.0f, 800.0f);
        slider.center = position;
        [UIView commitAnimations];
        slidesCompleted++;
        if (slidesCompleted == 2 && perca == 0) {
            [UIView beginAnimations:nil context:NULL];     
            [UIView setAnimationDuration:.3];
            [UIView setAnimationRepeatCount:1];
            [UIView setAnimationRepeatAutoreverses:NO];
            CGPoint position = CGPointMake(160.0f, 142.0f);
            great.center = position;
            [UIView commitAnimations];
            perca = 1;
             timer = [NSTimer scheduledTimerWithTimeInterval:.1 target:self selector:@selector(atme) userInfo:nil repeats:YES];
            NSLog(@"timer");
        }
    }
}

-(void)check1{
    if (slider1.value <= 3) {
        [UIView beginAnimations:nil context:NULL];     
        [UIView setAnimationDuration:.285];
        [UIView setAnimationRepeatCount:1];
        [UIView setAnimationRepeatAutoreverses:NO];
        CGPoint position = CGPointMake(216.0f, 800.0f);
        slider1.center = position;
        [UIView commitAnimations];
        slidesCompleted++;
    }
    if (slidesCompleted == 2 && perca == 0) {
        [UIView beginAnimations:nil context:NULL];     
        [UIView setAnimationDuration:.3];
        [UIView setAnimationRepeatCount:1];
        [UIView setAnimationRepeatAutoreverses:NO];
        CGPoint position = CGPointMake(160.0f, 142.0f);
        great.center = position;
        [UIView commitAnimations];
         perca = 1;
         timer = [NSTimer scheduledTimerWithTimeInterval:.1 target:self selector:@selector(atme) userInfo:nil repeats:YES];
        NSLog(@"timer");
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
        levelfive *Sword = [[levelfive alloc] initWithNibName:nil bundle:nil];
        [self presentModalViewController:Sword animated:YES];
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
    
    CGRect frame = CGRectMake(-110, 210, 430, 59);
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
    slider.continuous = NO;
    slider.value = 99.0;
    slider.transform = CGAffineTransformRotate(slider.transform, 270.00/180*M_PI);
    
    [self.view addSubview:slider];
    
    
    
    
    CGRect frame1 = CGRectMake(0, 210, 430, 59);
    slider1 = [[UISlider alloc] initWithFrame:frame1];
    [slider1 addTarget:self action:@selector(check1) forControlEvents:UIControlEventValueChanged];
    // in case the parent view draws with a custom color or gradient, use a transparent color
    slider1.backgroundColor = [UIColor clearColor];
    [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                              forState:UIControlStateNormal];
    [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                              forState:UIControlStateNormal];
    [slider1 setThumbImage: [UIImage imageNamed:@"downslide.png"] forState:UIControlStateNormal];
    
    slider1.minimumValue = 0.0;
    slider1.maximumValue = 100;
    slider1.continuous = NO;
    slider1.value = 99.0;
    slider1.transform = CGAffineTransformRotate(slider1.transform, 270.00/180*M_PI);
    
    [self.view addSubview:slider1];
   
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
