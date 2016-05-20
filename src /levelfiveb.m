//
//  levelfiveb.m
//  Slide Masters
//
//  Created by Blake Campbell on 5/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "levelfiveb.h"
#import "levelfivec.h"
@implementation levelfiveb
@synthesize slider;

-(void)check{
    if(slider.value <1){
        slider.value = 1;
    }
      if (slider.value > 98) {
        levelfivec *Sword = [[levelfivec alloc] initWithNibName:nil bundle:nil];
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
    
    int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
    
    CGRect frame = CGRectMake(-55, 210, 430, 59);
    slider = [[UISlider alloc] initWithFrame:frame];
    [slider addTarget:self action:@selector(check) forControlEvents:UIControlEventValueChanged];
    // in case the parent view draws with a custom color or gradient, use a transparent color
    slider.backgroundColor = [UIColor clearColor]; 
    UIImage *stetchLeftTrack = [[UIImage imageNamed:@"vertblue.png"]
                                stretchableImageWithLeftCapWidth:8.0 topCapHeight:8.0];
    UIImage *stetchRightTrack = [[UIImage imageNamed:@"vertorange.png"]
                                 stretchableImageWithLeftCapWidth:8.0 topCapHeight:8.0];
    [slider setThumbImage: [UIImage imageNamed:@"downslide.png"] forState:UIControlStateNormal];
    if (sliderselected == 0) {
        UIImage *stetchLeftTrack = [[UIImage imageNamed:@"vertorange.png"]
                                    stretchableImageWithLeftCapWidth:8.0 topCapHeight:8.0];
        UIImage *stetchRightTrack = [[UIImage imageNamed:@"vertblue.png"]
                                     stretchableImageWithLeftCapWidth:8.0 topCapHeight:8.0];
        [slider setThumbImage: [UIImage imageNamed:@"upslide.png"] forState:UIControlStateNormal];
        [slider setMinimumTrackImage:stetchLeftTrack forState:UIControlStateNormal];
        [slider setMaximumTrackImage:stetchRightTrack forState:UIControlStateNormal];
    }
    
    if (sliderselected == 1) {
        UIImage *stetchLeftTrack = [[UIImage imageNamed:@"AlienA1.png"]
                                    stretchableImageWithLeftCapWidth:8.0 topCapHeight:8.0];
        UIImage *stetchRightTrack = [[UIImage imageNamed:@"AlienB2.png"]
                                     stretchableImageWithLeftCapWidth:8.0 topCapHeight:8.0];
        [slider setThumbImage: [UIImage imageNamed:@"AliensliderB.png"] forState:UIControlStateNormal];
        [slider setMinimumTrackImage:stetchLeftTrack forState:UIControlStateNormal];
        [slider setMaximumTrackImage:stetchRightTrack forState:UIControlStateNormal];
    }
    if (sliderselected == 2) {
        UIImage *stetchLeftTrack = [[UIImage imageNamed:@"BunnyB1.png"]
                                    stretchableImageWithLeftCapWidth:8.0 topCapHeight:8.0];
        UIImage *stetchRightTrack = [[UIImage imageNamed:@"BunnyA2.png"]
                                     stretchableImageWithLeftCapWidth:8.0 topCapHeight:8.0];
        [slider setThumbImage: [UIImage imageNamed:@"BunnysliderB.png"] forState:UIControlStateNormal];
        [slider setMinimumTrackImage:stetchLeftTrack forState:UIControlStateNormal];
        [slider setMaximumTrackImage:stetchRightTrack forState:UIControlStateNormal];
    }
    if (sliderselected == 3) {
        UIImage *stetchLeftTrack = [[UIImage imageNamed:@"GoldBarA1.png"]
                                    stretchableImageWithLeftCapWidth:8.0 topCapHeight:8.0];
        UIImage *stetchRightTrack = [[UIImage imageNamed:@"GoldBarB1.png"]
                                     stretchableImageWithLeftCapWidth:8.0 topCapHeight:8.0];
        [slider setThumbImage: [UIImage imageNamed:@"GoldBarsliderB.png"] forState:UIControlStateNormal];
        [slider setMinimumTrackImage:stetchLeftTrack forState:UIControlStateNormal];
        [slider setMaximumTrackImage:stetchRightTrack forState:UIControlStateNormal];
    }
    
    if (sliderselected == 4) {
        UIImage *stetchLeftTrack = [[UIImage imageNamed:@"IceA2.png"]
                                    stretchableImageWithLeftCapWidth:8.0 topCapHeight:8.0];
        UIImage *stetchRightTrack = [[UIImage imageNamed:@"IceB2.png"]
                                     stretchableImageWithLeftCapWidth:8.0 topCapHeight:8.0];
        [slider setThumbImage: [UIImage imageNamed:@"IcesliderB.png"] forState:UIControlStateNormal];
        [slider setMinimumTrackImage:stetchLeftTrack forState:UIControlStateNormal];
        [slider setMaximumTrackImage:stetchRightTrack forState:UIControlStateNormal];
    }
    if (sliderselected == 5) {
        UIImage *stetchLeftTrack = [[UIImage imageNamed:@"FireA1.png"]
                                    stretchableImageWithLeftCapWidth:8.0 topCapHeight:8.0];
        UIImage *stetchRightTrack = [[UIImage imageNamed:@"FireB1.png"]
                                     stretchableImageWithLeftCapWidth:8.0 topCapHeight:8.0];
        [slider setThumbImage: [UIImage imageNamed:@"FiresliderA.png"] forState:UIControlStateNormal];
        [slider setMinimumTrackImage:stetchLeftTrack forState:UIControlStateNormal];
        [slider setMaximumTrackImage:stetchRightTrack forState:UIControlStateNormal];
    }
    if (sliderselected == 6) {
        UIImage *stetchLeftTrack = [[UIImage imageNamed:@"GhostieA2.png"]
                                    stretchableImageWithLeftCapWidth:8.0 topCapHeight:8.0];
        UIImage *stetchRightTrack = [[UIImage imageNamed:@"GhostieB2.png"]
                                     stretchableImageWithLeftCapWidth:8.0 topCapHeight:8.0];
        [slider setThumbImage: [UIImage imageNamed:@"GhostsliderB.png"] forState:UIControlStateNormal];
        [slider setMinimumTrackImage:stetchLeftTrack forState:UIControlStateNormal];
        [slider setMaximumTrackImage:stetchRightTrack forState:UIControlStateNormal];
    }
    if (sliderselected == 7) {
        UIImage *stetchLeftTrack = [[UIImage imageNamed:@"DragonA1.png"]
                                    stretchableImageWithLeftCapWidth:8.0 topCapHeight:8.0];
        UIImage *stetchRightTrack = [[UIImage imageNamed:@"DragonB1.png"]
                                     stretchableImageWithLeftCapWidth:8.0 topCapHeight:8.0];
        [slider setThumbImage: [UIImage imageNamed:@"DragonsliderB.png"] forState:UIControlStateNormal];
        [slider setMinimumTrackImage:stetchLeftTrack forState:UIControlStateNormal];
        [slider setMaximumTrackImage:stetchRightTrack forState:UIControlStateNormal];
    }
    if (sliderselected == 8) {
        UIImage *stetchLeftTrack = [[UIImage imageNamed:@"UnicornA1.png"]
                                    stretchableImageWithLeftCapWidth:8.0 topCapHeight:8.0];
        UIImage *stetchRightTrack = [[UIImage imageNamed:@"UnicornB2.png"]
                                     stretchableImageWithLeftCapWidth:8.0 topCapHeight:8.0];
        [slider setThumbImage: [UIImage imageNamed:@"UnicornsliderB.png"] forState:UIControlStateNormal];
        [slider setMinimumTrackImage:stetchLeftTrack forState:UIControlStateNormal];
        [slider setMaximumTrackImage:stetchRightTrack forState:UIControlStateNormal];
    }
    if (sliderselected == 9) {
        UIImage *stetchLeftTrack = [[UIImage imageNamed:@"BritishA1.png"]
                                    stretchableImageWithLeftCapWidth:8.0 topCapHeight:8.0];
        UIImage *stetchRightTrack = [[UIImage imageNamed:@"BritishB2.png"]
                                     stretchableImageWithLeftCapWidth:8.0 topCapHeight:8.0];
        [slider setThumbImage: [UIImage imageNamed:@"BritishsliderB.png"] forState:UIControlStateNormal];
        [slider setMinimumTrackImage:stetchLeftTrack forState:UIControlStateNormal];
        [slider setMaximumTrackImage:stetchRightTrack forState:UIControlStateNormal];
    }
    if (sliderselected == 10) {
        UIImage *stetchLeftTrack = [[UIImage imageNamed:@"RivetsA1.png"]
                                    stretchableImageWithLeftCapWidth:8.0 topCapHeight:8.0];
        UIImage *stetchRightTrack = [[UIImage imageNamed:@"RivetsB2.png"]
                                     stretchableImageWithLeftCapWidth:8.0 topCapHeight:8.0];
        [slider setThumbImage: [UIImage imageNamed:@"MetalsliderB.png"] forState:UIControlStateNormal];
        [slider setMinimumTrackImage:stetchLeftTrack forState:UIControlStateNormal];
        [slider setMaximumTrackImage:stetchRightTrack forState:UIControlStateNormal];
    }
    if (sliderselected == 11) {
        UIImage *stetchLeftTrack = [[UIImage imageNamed:@"RocketA1.png"]
                                    stretchableImageWithLeftCapWidth:8.0 topCapHeight:8.0];
        UIImage *stetchRightTrack = [[UIImage imageNamed:@"RocketB1.png"]
                                     stretchableImageWithLeftCapWidth:8.0 topCapHeight:8.0];
        [slider setThumbImage: [UIImage imageNamed:@"RocketsliderB.png"] forState:UIControlStateNormal];
        [slider setMinimumTrackImage:stetchLeftTrack forState:UIControlStateNormal];
        [slider setMaximumTrackImage:stetchRightTrack forState:UIControlStateNormal];
    }
    
    if (sliderselected == 12) {
        UIImage *stetchLeftTrack = [[UIImage imageNamed:@"NinjaA1.png"]
                                    stretchableImageWithLeftCapWidth:8.0 topCapHeight:8.0];
        UIImage *stetchRightTrack = [[UIImage imageNamed:@"NinjaB2.png"]
                                     stretchableImageWithLeftCapWidth:8.0 topCapHeight:8.0];
        [slider setThumbImage: [UIImage imageNamed:@"NinjasliderB.png"] forState:UIControlStateNormal];
        [slider setMinimumTrackImage:stetchLeftTrack forState:UIControlStateNormal];
        [slider setMaximumTrackImage:stetchRightTrack forState:UIControlStateNormal];
    }
    
    
    [slider setMinimumTrackImage:stetchLeftTrack forState:UIControlStateSelected];
    [slider setMaximumTrackImage:stetchRightTrack forState:UIControlStateSelected];
    slider.minimumValue = 0.0;
    slider.maximumValue = 100;
    slider.continuous = YES;
    slider.value = 1.0;
    slider.transform = CGAffineTransformRotate(slider.transform, 270.00/180*M_PI);
    
    [self.view addSubview:slider];
    
    
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
