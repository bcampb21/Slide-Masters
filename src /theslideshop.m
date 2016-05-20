//
//  theslideshop.m
//  Slide Masters
//
//  Created by Blake Campbell on 7/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "theslideshop.h"
#import "slidemastersViewController.h"
#import "flexModeMenu.h"

@implementation theslideshop
@synthesize selectButton,buyButton,shopview,alienPic,bunnyPic,dragonPic,ghostPic,goldPic,ninjaPic,rocketPic,unicornPic,icePic,metalPic,britishPic,defaultPic,description,cost,titleSlider;

-(IBAction)selectItem:(id)sender{
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
    if (backIndex == -2) {
        [[NSUserDefaults standardUserDefaults] setInteger:index forKey:@"SliderSelected"];  
        [[NSUserDefaults standardUserDefaults] synchronize];
        selectButton.hidden = FALSE;
    }
    if (backIndex > -2) {
        [[NSUserDefaults standardUserDefaults] setInteger:backIndex forKey:@"backgroundSelected"];  
        [[NSUserDefaults standardUserDefaults] synchronize];
        selectButton.hidden = FALSE;
    }
    [self usingIt];
    selectButton.hidden = TRUE;
    selectedLabel.hidden = FALSE;
    
}
-(IBAction)buyItem:(id)sender{
    slidemastersAppDelegate *appDelegate = (slidemastersAppDelegate *)[[UIApplication sharedApplication] delegate];
    gotTopaz = 0;
    int currentcoin =[[NSUserDefaults standardUserDefaults] floatForKey:@"coins"];
    
    if (index == 1 && currentcoin >= 3000) {
        [appDelegate ownAlien];
        gotTopaz = 1;
        buyButton.hidden = TRUE;
    } 
    if (index == 2 && currentcoin >= 3000) {
        [appDelegate ownBunny];
        gotTopaz = 1;
        buyButton.hidden = TRUE;
    } 
    if (index == 3 && currentcoin >= 6000) {
        [appDelegate ownMoney];
        gotTopaz = 1;
        buyButton.hidden = TRUE;
    } 
    if (index == 4 && currentcoin >= 3000) {
        [appDelegate ownIce];
        gotTopaz = 1;
        buyButton.hidden = TRUE;
    } 
    if (index == 6 && currentcoin >= 3000) {
        [appDelegate ownGhost];
        gotTopaz = 1;
        buyButton.hidden = TRUE;
    } 
    if (index == 7 && currentcoin >= 3000) {
        [appDelegate ownDragon];
        gotTopaz = 1;
        buyButton.hidden = TRUE;
    } 
    if (index == 8 && currentcoin >= 3000) {
        [appDelegate ownUnicorn];
        gotTopaz = 1;
        buyButton.hidden = TRUE;
    } 
    if (index == 9 && currentcoin >= 3000) {
        [appDelegate ownFlag];
        gotTopaz = 1;
        buyButton.hidden = TRUE;
    } 
    if (index == 10 && currentcoin >= 3000) {
        [appDelegate ownMetal];
        gotTopaz = 1;
        buyButton.hidden = TRUE;
    } 
    if (index == 11 && currentcoin >= 3000) {
        [appDelegate ownShuttle];
        gotTopaz = 1;
        buyButton.hidden = TRUE;
    } 
    if (index == 12 && currentcoin >= 3000) {
        [appDelegate ownNinja];
        gotTopaz = 1;
        buyButton.hidden = TRUE;
    } 
    if (index == 14 && currentcoin >= 2500) {
        int ownIt = 1;
        [[NSUserDefaults standardUserDefaults] setInteger:ownIt forKey:@"backgroundOneOwn"];  
        [[NSUserDefaults standardUserDefaults] synchronize];
        currentcoin = currentcoin - 2500;
        [[NSUserDefaults standardUserDefaults] setInteger:currentcoin forKey:@"coins"];  
        [[NSUserDefaults standardUserDefaults] synchronize];
        gotTopaz = 1;
        buyButton.hidden = TRUE;
    }
    if (index == 15 && currentcoin >= 2500) {
        int ownIt = 1;
        [[NSUserDefaults standardUserDefaults] setInteger:ownIt forKey:@"backgroundTwoOwn"];  
        [[NSUserDefaults standardUserDefaults] synchronize];
        currentcoin = currentcoin - 2500;
        [[NSUserDefaults standardUserDefaults] setInteger:currentcoin forKey:@"coins"];  
        [[NSUserDefaults standardUserDefaults] synchronize];
        gotTopaz = 1;
        buyButton.hidden = TRUE;
    }
    if (index == 16 && currentcoin >= 2500) {
        int ownIt = 1;
        [[NSUserDefaults standardUserDefaults] setInteger:ownIt forKey:@"backgroundThreeOwn"];  
        [[NSUserDefaults standardUserDefaults] synchronize];
        currentcoin = currentcoin - 2500;
        [[NSUserDefaults standardUserDefaults] setInteger:currentcoin forKey:@"coins"];  
        [[NSUserDefaults standardUserDefaults] synchronize];
        gotTopaz = 1;
        buyButton.hidden = TRUE;
    }
    if (index == 17 && currentcoin >= 2500) {
        int ownIt = 1;
        [[NSUserDefaults standardUserDefaults] setInteger:ownIt forKey:@"backgroundFourOwn"];  
        [[NSUserDefaults standardUserDefaults] synchronize];
        currentcoin = currentcoin - 2500;
        [[NSUserDefaults standardUserDefaults] setInteger:currentcoin forKey:@"coins"];  
        [[NSUserDefaults standardUserDefaults] synchronize];
        gotTopaz = 1;
        buyButton.hidden = TRUE;
    }
    
    if (gotTopaz == 0) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:
                              @"Not enough Topaz!"
                                                        message:
                              @""
                              delegate
                                                               : self cancelButtonTitle:
                              @"Close"
                                              otherButtonTitles: nil];
        [alert show];

    }
    if (gotTopaz == 1) {
        if (canSound == 0) {
            [audioPlayer stop];
            NSURL *url = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/buyNoise.mp3", [[NSBundle mainBundle] resourcePath]]];
            
            NSError *error;
            audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
            audioPlayer.numberOfLoops = 0;
            if (audioPlayer == nil)
                NSLog(@"not working");
            else
                audioPlayer.currentTime = 0;
            [audioPlayer play];
        }
        selectButton.hidden = FALSE;
        int currentcoin =[[NSUserDefaults standardUserDefaults] floatForKey:@"coins"];
        playerBank.text = [NSString stringWithFormat:@"%i",currentcoin];
        cost.text = [NSString stringWithFormat:@""];
        topazPic.hidden = TRUE;
        [self ownIt];
    }
    
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
        slidemastersAppDelegate *appDelegate = (slidemastersAppDelegate *)[[UIApplication sharedApplication] delegate];
       
        [appDelegate qMusic];
        
        int already = 0;
        [[NSUserDefaults standardUserDefaults] setInteger:already forKey:@"shopMusic"];  
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
    
    int toFlex =[[NSUserDefaults standardUserDefaults] integerForKey:@"fromFlex"];
    if (toFlex == 1) {
        flexModeMenu *Sword = [[flexModeMenu alloc] initWithNibName:nil bundle:nil];
        [self presentModalViewController:Sword animated:NO];
    }
    if (toFlex == 0) {
        slidemastersViewController *Sword = [[slidemastersViewController alloc] initWithNibName:nil bundle:nil];
        [self presentModalViewController:Sword animated:NO];
    }
    
}
-(IBAction)IAPstore:(id)sender{
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

    INAPStore *Sword = [[INAPStore alloc] initWithNibName:nil bundle:nil];
    [self presentModalViewController:Sword animated:NO];
}
-(IBAction)defaultSlider:(id)sender{
     checkMark.hidden = FALSE;
    howToLabel.hidden = TRUE;
     selectedLabel.hidden = FALSE;
    int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
    index = 0;
     backIndex = -2;
    titleSlider.text = [NSString stringWithFormat:@"Default Slider"];
    description.text = [NSString stringWithFormat:@"A Classic"];
    cost.text = [NSString stringWithFormat:@""];
    topazPic.hidden = TRUE;
    buyButton.hidden = TRUE;
    selectButton.hidden = FALSE;
    if (sliderselected == 0) {
        selectButton.hidden = TRUE;
    }
    alienPic.hidden = TRUE;
    bunnyPic.hidden = TRUE;
    dragonPic.hidden = TRUE;
    ghostPic.hidden = TRUE;
    goldPic.hidden = TRUE;
    ninjaPic.hidden = TRUE;
    rocketPic.hidden = TRUE;
    unicornPic.hidden = TRUE;
    icePic.hidden = TRUE;
    metalPic.hidden = TRUE;
    britishPic.hidden = TRUE;
    defaultPic.hidden = FALSE;
    
    originaBackground.hidden = TRUE;
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
    
}


-(IBAction)alien:(id)sender{
     checkMark.hidden = FALSE;
     topazPic.hidden = FALSE;
    howToLabel.hidden = TRUE;
     selectedLabel.hidden = FALSE;
    int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
    int hasSlider =[[NSUserDefaults standardUserDefaults] floatForKey:@"ownAlien"];
    index = 1;
     backIndex = -2;
    alienPic.hidden = FALSE;
    bunnyPic.hidden = TRUE;
    dragonPic.hidden = TRUE;
    ghostPic.hidden = TRUE;
    goldPic.hidden = TRUE;
    ninjaPic.hidden = TRUE;
    rocketPic.hidden = TRUE;
    unicornPic.hidden = TRUE;
    icePic.hidden = TRUE;
    metalPic.hidden = TRUE;
    britishPic.hidden = TRUE;
    defaultPic.hidden = TRUE;
    
    originaBackground.hidden = TRUE;
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

    
    titleSlider.text = [NSString stringWithFormat:@"Alien"];
    description.text = [NSString stringWithFormat:@"From the green planet"];
    cost.text = [NSString stringWithFormat:@"Cost: 3000"];
    
    if (hasSlider == 1) {
        cost.text = [NSString stringWithFormat:@""];
        topazPic.hidden = TRUE;
        selectButton.hidden = FALSE;
        buyButton.hidden = TRUE;
        if (sliderselected == 1) {
            selectButton.hidden = TRUE;
        }
       
    }
    if (hasSlider == 0) {
        selectButton.hidden = TRUE;
        buyButton.hidden = FALSE;
    }
    
}
-(IBAction)bunny:(id)sender{
     checkMark.hidden = FALSE;
     topazPic.hidden = FALSE;
    howToLabel.hidden = TRUE;
     selectedLabel.hidden = FALSE;
    int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
    int hasSlider =[[NSUserDefaults standardUserDefaults] floatForKey:@"ownBunny"];
    index = 2;
     backIndex = -2;
    alienPic.hidden = TRUE;
    bunnyPic.hidden = FALSE;
    dragonPic.hidden = TRUE;
    ghostPic.hidden = TRUE;
    goldPic.hidden = TRUE;
    ninjaPic.hidden = TRUE;
    rocketPic.hidden = TRUE;
    unicornPic.hidden = TRUE;
    icePic.hidden = TRUE;
    metalPic.hidden = TRUE;
    britishPic.hidden = TRUE;
    defaultPic.hidden = TRUE;
    
    originaBackground.hidden = TRUE;
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

    
    titleSlider.text = [NSString stringWithFormat:@"Rabbit Master"];
    description.text = [NSString stringWithFormat:@"Better than a hare"];
    cost.text = [NSString stringWithFormat:@"Cost: 3000"];
    
    if (hasSlider == 1) {
        cost.text = [NSString stringWithFormat:@""];
         topazPic.hidden = TRUE;
        selectButton.hidden = FALSE;
        buyButton.hidden = TRUE;
        if (sliderselected == 2) {
            selectButton.hidden = TRUE;
        }
    }
    if (hasSlider == 0) {
        selectButton.hidden = TRUE;
        buyButton.hidden = FALSE;
    }

}
-(IBAction)dragon:(id)sender{
     checkMark.hidden = FALSE;
     topazPic.hidden = FALSE;
    howToLabel.hidden = TRUE;
     selectedLabel.hidden = FALSE;
    int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
    int hasSlider =[[NSUserDefaults standardUserDefaults] floatForKey:@"ownDragon"];
    index = 7;
     backIndex = -2;
    alienPic.hidden = TRUE;
    bunnyPic.hidden = TRUE;
    dragonPic.hidden = FALSE;
    ghostPic.hidden = TRUE;
    goldPic.hidden = TRUE;
    ninjaPic.hidden = TRUE;
    rocketPic.hidden = TRUE;
    unicornPic.hidden = TRUE;
    icePic.hidden = TRUE;
    metalPic.hidden = TRUE;
    britishPic.hidden = TRUE;
    defaultPic.hidden = TRUE;
    
    originaBackground.hidden = TRUE;
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

    
    titleSlider.text = [NSString stringWithFormat:@"Dragon"];
    description.text = [NSString stringWithFormat:@"The fire breather"];
    cost.text = [NSString stringWithFormat:@"Cost: 3000"];
    
    if (hasSlider == 1) {
        cost.text = [NSString stringWithFormat:@""];
         topazPic.hidden = TRUE;
        selectButton.hidden = FALSE;
        buyButton.hidden = TRUE;
        if (sliderselected == 7) {
            selectButton.hidden = TRUE;
        }

    }
    if (hasSlider == 0) {
        selectButton.hidden = TRUE;
        buyButton.hidden = FALSE;
    }

}
-(IBAction)ghost:(id)sender{
     checkMark.hidden = FALSE;
     topazPic.hidden = FALSE;
    howToLabel.hidden = TRUE;
     selectedLabel.hidden = FALSE;
    int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
    int hasSlider =[[NSUserDefaults standardUserDefaults] floatForKey:@"ownGhost"];
    index = 6;
     backIndex = -2;
    alienPic.hidden = TRUE;
    bunnyPic.hidden = TRUE;
    dragonPic.hidden = TRUE;
    ghostPic.hidden = FALSE;
    goldPic.hidden = TRUE;
    ninjaPic.hidden = TRUE;
    rocketPic.hidden = TRUE;
    unicornPic.hidden = TRUE;
    icePic.hidden = TRUE;
    metalPic.hidden = TRUE;
    britishPic.hidden = TRUE;
    defaultPic.hidden = TRUE;
    
    originaBackground.hidden = TRUE;
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

    
    titleSlider.text = [NSString stringWithFormat:@"Ghostie"];
    description.text = [NSString stringWithFormat:@"The horror, the horror!"];
    cost.text = [NSString stringWithFormat:@"Cost: 3000"];
    
    if (hasSlider == 1) {
        cost.text = [NSString stringWithFormat:@""];
         topazPic.hidden = TRUE;
        selectButton.hidden = FALSE;
        buyButton.hidden = TRUE;
        if (sliderselected == 6) {
            selectButton.hidden = TRUE;
        }
    }
    if (hasSlider == 0) {
        selectButton.hidden = TRUE;
        buyButton.hidden = FALSE;
    }

}
-(IBAction)gold:(id)sender{
     checkMark.hidden = FALSE;
     topazPic.hidden = FALSE;
    howToLabel.hidden = TRUE;
     selectedLabel.hidden = FALSE;
    int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
    int hasSlider =[[NSUserDefaults standardUserDefaults] floatForKey:@"ownMoney"];
    index = 3;
     backIndex = -2;
    alienPic.hidden = TRUE;
    bunnyPic.hidden = TRUE;
    dragonPic.hidden = TRUE;
    ghostPic.hidden = TRUE;
    goldPic.hidden = FALSE;
    ninjaPic.hidden = TRUE;
    rocketPic.hidden = TRUE;
    unicornPic.hidden = TRUE;
    icePic.hidden = TRUE;
    metalPic.hidden = TRUE;
    britishPic.hidden = TRUE;
    defaultPic.hidden = TRUE;
    
    originaBackground.hidden = TRUE;
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

    
    titleSlider.text = [NSString stringWithFormat:@"Gold Bar"];
    description.text = [NSString stringWithFormat:@"Root of Evil"];
    cost.text = [NSString stringWithFormat:@"Cost: 6000"];
    
    if (hasSlider == 1) {
        cost.text = [NSString stringWithFormat:@""];
         topazPic.hidden = TRUE;
        selectButton.hidden = FALSE;
        buyButton.hidden = TRUE;
        if (sliderselected == 3) {
            selectButton.hidden = TRUE;
        }
    }
    if (hasSlider == 0) {
        selectButton.hidden = TRUE;
        buyButton.hidden = FALSE;
    }

}
-(IBAction)ninja:(id)sender{
     checkMark.hidden = FALSE;
     topazPic.hidden = FALSE;
    howToLabel.hidden = TRUE;
     selectedLabel.hidden = FALSE;
    int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
    int hasSlider =[[NSUserDefaults standardUserDefaults] floatForKey:@"ownNinja"];
    index = 12;
     backIndex = -2;
    alienPic.hidden = TRUE;
    bunnyPic.hidden = TRUE;
    dragonPic.hidden = TRUE;
    ghostPic.hidden = TRUE;
    goldPic.hidden = TRUE;
    ninjaPic.hidden = FALSE;
    rocketPic.hidden = TRUE;
    unicornPic.hidden = TRUE;
    icePic.hidden = TRUE;
    metalPic.hidden = TRUE;
    britishPic.hidden = TRUE;
    defaultPic.hidden = TRUE;
    
    originaBackground.hidden = TRUE;
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

    
    titleSlider.text = [NSString stringWithFormat:@"Ninja"];
    description.text = [NSString stringWithFormat:@"Watch your fingers!"];
    cost.text = [NSString stringWithFormat:@"Cost: 3000"];
    
    if (hasSlider == 1) {
        cost.text = [NSString stringWithFormat:@""];
         topazPic.hidden = TRUE;
        selectButton.hidden = FALSE;
        buyButton.hidden = TRUE;
        if (sliderselected == 12) {
            selectButton.hidden = TRUE;
        }
    }
    if (hasSlider == 0) {
        selectButton.hidden = TRUE;
        buyButton.hidden = FALSE;
    }

}
-(IBAction)rocket:(id)sender{
     checkMark.hidden = FALSE;
     topazPic.hidden = FALSE;
    howToLabel.hidden = TRUE;
     selectedLabel.hidden = FALSE;
    int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
    int hasSlider =[[NSUserDefaults standardUserDefaults] floatForKey:@"ownShuttle"];
    index = 11;
     backIndex = -2;
    alienPic.hidden = TRUE;
    bunnyPic.hidden = TRUE;
    dragonPic.hidden = TRUE;
    ghostPic.hidden = TRUE;
    goldPic.hidden = TRUE;
    ninjaPic.hidden = TRUE;
    rocketPic.hidden = FALSE;
    unicornPic.hidden = TRUE;
    icePic.hidden = TRUE;
    metalPic.hidden = TRUE;
    britishPic.hidden = TRUE;
    defaultPic.hidden = TRUE;
    
    originaBackground.hidden = TRUE;
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

    
    titleSlider.text = [NSString stringWithFormat:@"Shuttle"];
    description.text = [NSString stringWithFormat:@"First Slider in space"];
    cost.text = [NSString stringWithFormat:@"Cost: 3000"];
    
    if (hasSlider == 1) {
        cost.text = [NSString stringWithFormat:@""];
         topazPic.hidden = TRUE;
        selectButton.hidden = FALSE;
        buyButton.hidden = TRUE;
        if (sliderselected == 11) {
            selectButton.hidden = TRUE;
        }
    }
    if (hasSlider == 0) {
        selectButton.hidden = TRUE;
        buyButton.hidden = FALSE;
    }
    

}
-(IBAction)unicorn:(id)sender{
     checkMark.hidden = FALSE;
     topazPic.hidden = FALSE;
    howToLabel.hidden = TRUE;
     selectedLabel.hidden = FALSE;
    int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
    int hasSlider =[[NSUserDefaults standardUserDefaults] floatForKey:@"ownUnicorn"];
    index = 8;
     backIndex = -2;
    alienPic.hidden = TRUE;
    bunnyPic.hidden = TRUE;
    dragonPic.hidden = TRUE;
    ghostPic.hidden = TRUE;
    goldPic.hidden = TRUE;
    ninjaPic.hidden = TRUE;
    rocketPic.hidden = TRUE;
    unicornPic.hidden = FALSE;
    icePic.hidden = TRUE;
    metalPic.hidden = TRUE;
    britishPic.hidden = TRUE;
    defaultPic.hidden = TRUE;
    
    originaBackground.hidden = TRUE;
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

    
    titleSlider.text = [NSString stringWithFormat:@"Unicorn"];
    description.text = [NSString stringWithFormat:@"Told you they exist"];
    cost.text = [NSString stringWithFormat:@"Cost: 3000"];
    
    if (hasSlider == 1) {
        cost.text = [NSString stringWithFormat:@""];
         topazPic.hidden = TRUE;
        selectButton.hidden = FALSE;
        buyButton.hidden = TRUE;
        if (sliderselected == 8) {
            selectButton.hidden = TRUE;
        }
    }
    if (hasSlider == 0) {
        selectButton.hidden = TRUE;
        buyButton.hidden = FALSE;
    }

}
-(IBAction)ice:(id)sender{
     checkMark.hidden = FALSE;
     topazPic.hidden = FALSE;
    howToLabel.hidden = TRUE;
     selectedLabel.hidden = FALSE;
    int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
    int hasSlider =[[NSUserDefaults standardUserDefaults] floatForKey:@"ownIce"];
    index = 4;
     backIndex = -2;
    alienPic.hidden = TRUE;
    bunnyPic.hidden = TRUE;
    dragonPic.hidden = TRUE;
    ghostPic.hidden = TRUE;
    goldPic.hidden = TRUE;
    ninjaPic.hidden = TRUE;
    rocketPic.hidden = TRUE;
    unicornPic.hidden = TRUE;
    icePic.hidden = FALSE;
    metalPic.hidden = TRUE;
    britishPic.hidden = TRUE;
    defaultPic.hidden = TRUE;
    
    originaBackground.hidden = TRUE;
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

    
    titleSlider.text = [NSString stringWithFormat:@"Ice Master"];
    description.text = [NSString stringWithFormat:@"Frozen in time"];
    cost.text = [NSString stringWithFormat:@"Cost: 3000"];
    
    if (hasSlider == 1) {
        cost.text = [NSString stringWithFormat:@""];
         topazPic.hidden = TRUE;
        selectButton.hidden = FALSE;
        buyButton.hidden = TRUE;
        if (sliderselected == 4) {
            selectButton.hidden = TRUE;
        }
    }
    if (hasSlider == 0) {
        selectButton.hidden = TRUE;
        buyButton.hidden = FALSE;
    }

}
-(IBAction)metal:(id)sender{
     checkMark.hidden = FALSE;
     topazPic.hidden = FALSE;
    howToLabel.hidden = TRUE;
     selectedLabel.hidden = FALSE;
    int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
    int hasSlider =[[NSUserDefaults standardUserDefaults] floatForKey:@"ownMetal"];
    index = 10;
     backIndex = -2;
    alienPic.hidden = TRUE;
    bunnyPic.hidden = TRUE;
    dragonPic.hidden = TRUE;
    ghostPic.hidden = TRUE;
    goldPic.hidden = TRUE;
    ninjaPic.hidden = TRUE;
    rocketPic.hidden = TRUE;
    unicornPic.hidden = TRUE;
    icePic.hidden = TRUE;
    metalPic.hidden = FALSE;
    britishPic.hidden = TRUE;
    defaultPic.hidden = TRUE;
    
    originaBackground.hidden = TRUE;
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

    
    titleSlider.text = [NSString stringWithFormat:@"Armored"];
    description.text = [NSString stringWithFormat:@"Can take a beating"];
    cost.text = [NSString stringWithFormat:@"Cost: 3000"];
    
    if (hasSlider == 1) {
        cost.text = [NSString stringWithFormat:@""];
        topazPic.hidden = TRUE;
        selectButton.hidden = FALSE;
        buyButton.hidden = TRUE;
        if (sliderselected == 10) {
            selectButton.hidden = TRUE;
        }
    }
    if (hasSlider == 0) {
        selectButton.hidden = TRUE;
        buyButton.hidden = FALSE;
    }

}
-(IBAction)british:(id)sender{
     checkMark.hidden = FALSE;
     topazPic.hidden = FALSE;
    howToLabel.hidden = TRUE;
     selectedLabel.hidden = FALSE;
    int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
    int hasSlider =[[NSUserDefaults standardUserDefaults] floatForKey:@"ownFlag"];
    index = 9;
     backIndex = -2;
    alienPic.hidden = TRUE;
    bunnyPic.hidden = TRUE;
    dragonPic.hidden = TRUE;
    ghostPic.hidden = TRUE;
    goldPic.hidden = TRUE;
    ninjaPic.hidden = TRUE;
    rocketPic.hidden = TRUE;
    unicornPic.hidden = TRUE;
    icePic.hidden = TRUE;
    metalPic.hidden = TRUE;
    britishPic.hidden = FALSE;
    defaultPic.hidden = TRUE;
    
    originaBackground.hidden = TRUE;
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

    
    titleSlider.text = [NSString stringWithFormat:@"Flag"];
    description.text = [NSString stringWithFormat:@"Yeah Baby!"];
    cost.text = [NSString stringWithFormat:@"Cost: 3000"];
    
    if (hasSlider == 1) {
        cost.text = [NSString stringWithFormat:@""];
         topazPic.hidden = TRUE;
        selectButton.hidden = FALSE;
        buyButton.hidden = TRUE;
        if (sliderselected == 9) {
            selectButton.hidden = TRUE;
        }
    }
    if (hasSlider == 0) {
        selectButton.hidden = TRUE;
        buyButton.hidden = FALSE;
    }

}
-(IBAction)backgroundOriginal:(id)sender{
     checkMark.hidden = FALSE;
    howToLabel.hidden = TRUE;
     selectedLabel.hidden = FALSE;
    int backgroundSelected =[[NSUserDefaults standardUserDefaults] integerForKey:@"backgroundSelected"];
    
    titleSlider.text = [NSString stringWithFormat:@"Original Background"];
    description.text = [NSString stringWithFormat:@"Another Classic"];
    cost.text = [NSString stringWithFormat:@""];
     howToLabel.text = [NSString stringWithFormat:@""];
     topazPic.hidden = TRUE;
    
    alienPic.hidden = TRUE;
    bunnyPic.hidden = TRUE;
    dragonPic.hidden = TRUE;
    ghostPic.hidden = TRUE;
    goldPic.hidden = TRUE;
    ninjaPic.hidden = TRUE;
    rocketPic.hidden = TRUE;
    unicornPic.hidden = TRUE;
    icePic.hidden = TRUE;
    metalPic.hidden = TRUE;
    britishPic.hidden = TRUE;
    defaultPic.hidden = TRUE;
    
    originaBackground.hidden = FALSE;
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
    
    index = 13;
    backIndex = 0;
    if (backgroundSelected == 0) {
        selectButton.hidden = TRUE;
        buyButton.hidden = TRUE;
    }
    if (backgroundSelected != 0) {
        selectButton.hidden = FALSE;
        buyButton.hidden = TRUE;
    }
    
}
-(IBAction)backgroundOne:(id)sender{
     checkMark.hidden = FALSE;
     topazPic.hidden = FALSE;
    howToLabel.hidden = TRUE;
     selectedLabel.hidden = FALSE;
    int backgroundSelected =[[NSUserDefaults standardUserDefaults] integerForKey:@"backgroundSelected"];
    int owned =[[NSUserDefaults standardUserDefaults] integerForKey:@"backgroundOneOwn"];
   
    titleSlider.text = [NSString stringWithFormat:@"Emerald Green"];
    description.text = [NSString stringWithFormat:@""];
    cost.text = [NSString stringWithFormat:@"Cost: 2500"];
    
    alienPic.hidden = TRUE;
    bunnyPic.hidden = TRUE;
    dragonPic.hidden = TRUE;
    ghostPic.hidden = TRUE;
    goldPic.hidden = TRUE;
    ninjaPic.hidden = TRUE;
    rocketPic.hidden = TRUE;
    unicornPic.hidden = TRUE;
    icePic.hidden = TRUE;
    metalPic.hidden = TRUE;
    britishPic.hidden = TRUE;
    defaultPic.hidden = TRUE;
    
    originaBackground.hidden = TRUE;
    backgroundOne.hidden = FALSE;
    backgroundTwo.hidden = TRUE;
    backgroundThree.hidden = TRUE;
    backgroundFour.hidden = TRUE;
    backgroundFive.hidden = TRUE;
    backgroundSix.hidden = TRUE;
    backgroundSeven.hidden = TRUE;
    backgroundEight.hidden = TRUE;
    backgroundNine.hidden = TRUE;
    backgroundTen.hidden = TRUE;
    
    index = 14;
    backIndex = 1;
    if (owned == 1) {
        cost.text = [NSString stringWithFormat:@""];
        selectButton.hidden = FALSE;
        buyButton.hidden = TRUE;
        topazPic.hidden = TRUE;
        if (backgroundSelected == 1) {
            selectButton.hidden = TRUE;
            buyButton.hidden = TRUE;
             howToLabel.text = [NSString stringWithFormat:@""];
        }
    }
    if (owned == 0) {
        buyButton.hidden = FALSE;
        selectButton.hidden = TRUE;
    }
}
-(IBAction)backgroundTwo:(id)sender{  
     checkMark.hidden = FALSE;
    topazPic.hidden = FALSE;
    howToLabel.hidden = TRUE;
     selectedLabel.hidden = FALSE;
    int backgroundSelected =[[NSUserDefaults standardUserDefaults] integerForKey:@"backgroundSelected"];
    int owned =[[NSUserDefaults standardUserDefaults] integerForKey:@"backgroundTwoOwn"];
    
    NSLog(@" %i selected and %i owned",backgroundSelected,owned);
    
    titleSlider.text = [NSString stringWithFormat:@"Topaz Blue"];
    description.text = [NSString stringWithFormat:@""];
    cost.text = [NSString stringWithFormat:@"Cost: 2500"];
    
    alienPic.hidden = TRUE;
    bunnyPic.hidden = TRUE;
    dragonPic.hidden = TRUE;
    ghostPic.hidden = TRUE;
    goldPic.hidden = TRUE;
    ninjaPic.hidden = TRUE;
    rocketPic.hidden = TRUE;
    unicornPic.hidden = TRUE;
    icePic.hidden = TRUE;
    metalPic.hidden = TRUE;
    britishPic.hidden = TRUE;
    defaultPic.hidden = TRUE;
    
    originaBackground.hidden = TRUE;
    backgroundOne.hidden = TRUE;
    backgroundTwo.hidden = FALSE;
    backgroundThree.hidden = TRUE;
    backgroundFour.hidden = TRUE;
    backgroundFive.hidden = TRUE;
    backgroundSix.hidden = TRUE;
    backgroundSeven.hidden = TRUE;
    backgroundEight.hidden = TRUE;
    backgroundNine.hidden = TRUE;
    backgroundTen.hidden = TRUE;
    index = 15;
    backIndex = 2;
    if (owned == 1) {
        cost.text = [NSString stringWithFormat:@""];
         howToLabel.text = [NSString stringWithFormat:@""];
        selectButton.hidden = FALSE;
        buyButton.hidden = TRUE;
        topazPic.hidden = TRUE;
            if (backgroundSelected == 2) {
                selectButton.hidden = TRUE;
                buyButton.hidden = TRUE;
            }

    }
    if (owned == 0) {
        buyButton.hidden = FALSE;
        selectButton.hidden = TRUE;
    }

}
-(IBAction)backgroundThree:(id)sender{
     checkMark.hidden = FALSE;
     topazPic.hidden = FALSE;
    howToLabel.hidden = TRUE;
     selectedLabel.hidden = FALSE;
    int backgroundSelected =[[NSUserDefaults standardUserDefaults] integerForKey:@"backgroundSelected"];
    int owned =[[NSUserDefaults standardUserDefaults] integerForKey:@"backgroundThreeOwn"];
    
    titleSlider.text = [NSString stringWithFormat:@"Bubblegum Pink"];
    description.text = [NSString stringWithFormat:@""];
    cost.text = [NSString stringWithFormat:@"Cost: 2500"];
    
    alienPic.hidden = TRUE;
    bunnyPic.hidden = TRUE;
    dragonPic.hidden = TRUE;
    ghostPic.hidden = TRUE;
    goldPic.hidden = TRUE;
    ninjaPic.hidden = TRUE;
    rocketPic.hidden = TRUE;
    unicornPic.hidden = TRUE;
    icePic.hidden = TRUE;
    metalPic.hidden = TRUE;
    britishPic.hidden = TRUE;
    defaultPic.hidden = TRUE;
    
    originaBackground.hidden = TRUE;
    backgroundOne.hidden = TRUE;
    backgroundTwo.hidden = TRUE;
    backgroundThree.hidden = FALSE;
    backgroundFour.hidden = TRUE;
    backgroundFive.hidden = TRUE;
    backgroundSix.hidden = TRUE;
    backgroundSeven.hidden = TRUE;
    backgroundEight.hidden = TRUE;
    backgroundNine.hidden = TRUE;
    backgroundTen.hidden = TRUE;
    
    index = 16;
    backIndex = 3;
    
    if (owned == 1) {
        cost.text = [NSString stringWithFormat:@""];
         howToLabel.text = [NSString stringWithFormat:@""];
        selectButton.hidden = FALSE;
        buyButton.hidden = TRUE;
        topazPic.hidden = TRUE;
        if (backgroundSelected == 3) {
            selectButton.hidden = TRUE;
            buyButton.hidden = TRUE;
        }
    }
    if (owned == 0) {
        buyButton.hidden = FALSE;
        selectButton.hidden = TRUE;
    }

}
-(IBAction)backgroundFour:(id)sender{
     checkMark.hidden = FALSE;
     topazPic.hidden = FALSE;
    howToLabel.hidden = TRUE;
     selectedLabel.hidden = FALSE;
    int backgroundSelected =[[NSUserDefaults standardUserDefaults] integerForKey:@"backgroundSelected"];
    int owned =[[NSUserDefaults standardUserDefaults] integerForKey:@"backgroundFourOwn"];
    
    titleSlider.text = [NSString stringWithFormat:@"Soothing Swirl"];
    description.text = [NSString stringWithFormat:@""];
    cost.text = [NSString stringWithFormat:@"Cost: 3000"];
    
    alienPic.hidden = TRUE;
    bunnyPic.hidden = TRUE;
    dragonPic.hidden = TRUE;
    ghostPic.hidden = TRUE;
    goldPic.hidden = TRUE;
    ninjaPic.hidden = TRUE;
    rocketPic.hidden = TRUE;
    unicornPic.hidden = TRUE;
    icePic.hidden = TRUE;
    metalPic.hidden = TRUE;
    britishPic.hidden = TRUE;
    defaultPic.hidden = TRUE;
    
    originaBackground.hidden = TRUE;
    backgroundOne.hidden = TRUE;
    backgroundTwo.hidden = TRUE;
    backgroundThree.hidden = TRUE;
    backgroundFour.hidden = FALSE;
    backgroundFive.hidden = TRUE;
    backgroundSix.hidden = TRUE;
    backgroundSeven.hidden = TRUE;
    backgroundEight.hidden = TRUE;
    backgroundNine.hidden = TRUE;
    backgroundTen.hidden = TRUE;
    
    index = 17;
    backIndex = 4;
       if (owned == 1) {
        cost.text = [NSString stringWithFormat:@""];
        howToLabel.text = [NSString stringWithFormat:@""];
        selectButton.hidden = FALSE;
        buyButton.hidden = TRUE;
           topazPic.hidden = TRUE;
           selectedLabel.hidden = FALSE;
        if (backgroundSelected == 4) {
            selectButton.hidden = TRUE;
            buyButton.hidden = TRUE;
        }
    }
    if (owned == 0) {
        buyButton.hidden = FALSE;
        selectButton.hidden = TRUE;
    }

}
-(IBAction)backgroundFive:(id)sender{
     topazPic.hidden = TRUE;
    buyButton.hidden = TRUE;
    int backgroundSelected =[[NSUserDefaults standardUserDefaults] integerForKey:@"backgroundSelected"];
    int owned =[[NSUserDefaults standardUserDefaults] integerForKey:@"backgroundFiveOwn"];
    
    titleSlider.text = [NSString stringWithFormat:@"Stars"];
    description.text = [NSString stringWithFormat:@""];
    cost.text = [NSString stringWithFormat:@"         Locked"];
    
    alienPic.hidden = TRUE;
    bunnyPic.hidden = TRUE;
    dragonPic.hidden = TRUE;
    ghostPic.hidden = TRUE;
    goldPic.hidden = TRUE;
    ninjaPic.hidden = TRUE;
    rocketPic.hidden = TRUE;
    unicornPic.hidden = TRUE;
    icePic.hidden = TRUE;
    metalPic.hidden = TRUE;
    britishPic.hidden = TRUE;
    defaultPic.hidden = TRUE;
    
    originaBackground.hidden = TRUE;
    backgroundOne.hidden = TRUE;
    backgroundTwo.hidden = TRUE;
    backgroundThree.hidden = TRUE;
    backgroundFour.hidden = TRUE;
    backgroundFive.hidden = FALSE;
    backgroundSix.hidden = TRUE;
    backgroundSeven.hidden = TRUE;
    backgroundEight.hidden = TRUE;
    backgroundNine.hidden = TRUE;
    backgroundTen.hidden = TRUE;
    
    index = 18;
    backIndex = 5;
    if (owned == 1) {
        selectButton.hidden = FALSE;
        cost.text = [NSString stringWithFormat:@""];
         howToLabel.text = [NSString stringWithFormat:@""];
        checkMark.hidden = FALSE;
        if (backgroundSelected == 5) {
            howToLabel.hidden = TRUE;
            selectButton.hidden = TRUE;
            selectedLabel.hidden = FALSE;
        }
    }
    if (owned == 0) {
         checkMark.hidden = TRUE;
        howToLabel.hidden = FALSE;
        selectButton.hidden = TRUE;  
         selectedLabel.hidden = TRUE;
        howToLabel.text = [NSString stringWithFormat:@"Earn a Gold Medal in every trial"];
    }

}
-(IBAction)backgroundSix:(id)sender{
     topazPic.hidden = TRUE;
    buyButton.hidden = TRUE;
    int backgroundSelected =[[NSUserDefaults standardUserDefaults] integerForKey:@"backgroundSelected"];
    int owned =[[NSUserDefaults standardUserDefaults] integerForKey:@"backgroundSixOwn"];
    
    titleSlider.text = [NSString stringWithFormat:@"Cosmic Circle"];
    description.text = [NSString stringWithFormat:@""];
    cost.text = [NSString stringWithFormat:@"         Locked"];
    
    alienPic.hidden = TRUE;
    bunnyPic.hidden = TRUE;
    dragonPic.hidden = TRUE;
    ghostPic.hidden = TRUE;
    goldPic.hidden = TRUE;
    ninjaPic.hidden = TRUE;
    rocketPic.hidden = TRUE;
    unicornPic.hidden = TRUE;
    icePic.hidden = TRUE;
    metalPic.hidden = TRUE;
    britishPic.hidden = TRUE;
    defaultPic.hidden = TRUE;
    
    originaBackground.hidden = TRUE;
    backgroundOne.hidden = TRUE;
    backgroundTwo.hidden = TRUE;
    backgroundThree.hidden = TRUE;
    backgroundFour.hidden = TRUE;
    backgroundFive.hidden = TRUE;
    backgroundSix.hidden = FALSE;
    backgroundSeven.hidden = TRUE;
    backgroundEight.hidden = TRUE;
    backgroundNine.hidden = TRUE;
    backgroundTen.hidden = TRUE;
    
    index = 19;
    backIndex = 6;
 
    if (owned == 1) {
        cost.text = [NSString stringWithFormat:@""];
         howToLabel.text = [NSString stringWithFormat:@""];
        selectButton.hidden = FALSE;
         checkMark.hidden = FALSE;
        if (backgroundSelected == 6) {
             howToLabel.hidden = TRUE;
            selectButton.hidden = TRUE;
            selectedLabel.hidden = FALSE;
        }
    }
    if (owned == 0) {
         checkMark.hidden = TRUE;
        howToLabel.hidden = FALSE;
        selectButton.hidden = TRUE; 
         selectedLabel.hidden = TRUE;
        howToLabel.text = [NSString stringWithFormat:@"This background is found in a Mystery Sphere"];
    }

}
-(IBAction)backgroundSeven:(id)sender{
    topazPic.hidden = TRUE;
    buyButton.hidden = TRUE;
    int backgroundSelected =[[NSUserDefaults standardUserDefaults] integerForKey:@"backgroundSelected"];
    int owned =[[NSUserDefaults standardUserDefaults] integerForKey:@"backgroundSevenOwn"];
    
    titleSlider.text = [NSString stringWithFormat:@"Master Background"];
    description.text = [NSString stringWithFormat:@""];
    cost.text = [NSString stringWithFormat:@"         Locked"];
    
    alienPic.hidden = TRUE;
    bunnyPic.hidden = TRUE;
    dragonPic.hidden = TRUE;
    ghostPic.hidden = TRUE;
    goldPic.hidden = TRUE;
    ninjaPic.hidden = TRUE;
    rocketPic.hidden = TRUE;
    unicornPic.hidden = TRUE;
    icePic.hidden = TRUE;
    metalPic.hidden = TRUE;
    britishPic.hidden = TRUE;
    defaultPic.hidden = TRUE;
    
    originaBackground.hidden = TRUE;
    backgroundOne.hidden = TRUE;
    backgroundTwo.hidden = TRUE;
    backgroundThree.hidden = TRUE;
    backgroundFour.hidden = TRUE;
    backgroundFive.hidden = TRUE;
    backgroundSix.hidden = TRUE;
    backgroundSeven.hidden = FALSE;
    backgroundEight.hidden = TRUE;
    backgroundNine.hidden = TRUE;
    backgroundTen.hidden = TRUE;
    
    index = 20;
    backIndex = 7;
   
    if (owned == 1) {
        cost.text = [NSString stringWithFormat:@""];
         howToLabel.text = [NSString stringWithFormat:@""];
        selectButton.hidden = FALSE;
        selectedLabel.hidden = FALSE;
         checkMark.hidden = FALSE;
        if (backgroundSelected == 7) {
            howToLabel.hidden = TRUE;
            selectButton.hidden = TRUE;
            selectedLabel.hidden = FALSE;
        }

    }
    if (owned == 0) {
         checkMark.hidden = TRUE;
        howToLabel.hidden = FALSE;
        selectButton.hidden = TRUE;  
        selectedLabel.hidden = TRUE;
        howToLabel.text = [NSString stringWithFormat:@"Complete the Master's Challenge to unlock"];
    }

}
-(IBAction)backgroundEight:(id)sender{
     topazPic.hidden = TRUE;
    buyButton.hidden = TRUE;
    int backgroundSelected =[[NSUserDefaults standardUserDefaults] integerForKey:@"backgroundSelected"];
    int owned =[[NSUserDefaults standardUserDefaults] integerForKey:@"backgroundEightOwn"];
    
    titleSlider.text = [NSString stringWithFormat:@"Arrows"];
    description.text = [NSString stringWithFormat:@""];
    cost.text = [NSString stringWithFormat:@"         Locked"];
    
    alienPic.hidden = TRUE;
    bunnyPic.hidden = TRUE;
    dragonPic.hidden = TRUE;
    ghostPic.hidden = TRUE;
    goldPic.hidden = TRUE;
    ninjaPic.hidden = TRUE;
    rocketPic.hidden = TRUE;
    unicornPic.hidden = TRUE;
    icePic.hidden = TRUE;
    metalPic.hidden = TRUE;
    britishPic.hidden = TRUE;
    defaultPic.hidden = TRUE;
    
    originaBackground.hidden = TRUE;
    backgroundOne.hidden = TRUE;
    backgroundTwo.hidden = TRUE;
    backgroundThree.hidden = TRUE;
    backgroundFour.hidden = TRUE;
    backgroundFive.hidden = TRUE;
    backgroundSix.hidden = TRUE;
    backgroundSeven.hidden = TRUE;
    backgroundEight.hidden = FALSE;
    backgroundNine.hidden = TRUE;
    backgroundTen.hidden = TRUE;
    
    index = 21;
    backIndex = 8;
    
    if (owned == 1) {
        cost.text = [NSString stringWithFormat:@""];
         howToLabel.text = [NSString stringWithFormat:@""];
        selectButton.hidden = FALSE;
        selectedLabel.hidden = FALSE;
         checkMark.hidden = FALSE;
        if (backgroundSelected == 8) {
             howToLabel.hidden = TRUE;
            selectButton.hidden = TRUE;
            selectedLabel.hidden = FALSE;
        }
    }
    if (owned == 0) {
         checkMark.hidden = TRUE;
        howToLabel.hidden = FALSE;
        selectButton.hidden = TRUE;   
        selectedLabel.hidden = TRUE;
        howToLabel.text = [NSString stringWithFormat:@"Reach Flex Level 10 to unlock"];
    }

}
-(IBAction)backgroundNine:(id)sender{
     topazPic.hidden = TRUE;
    buyButton.hidden = TRUE;
    int backgroundSelected =[[NSUserDefaults standardUserDefaults] integerForKey:@"backgroundSelected"];
    int owned =[[NSUserDefaults standardUserDefaults] integerForKey:@"backgroundNineOwn"];
    
    titleSlider.text = [NSString stringWithFormat:@"Checkerboard"];
    description.text = [NSString stringWithFormat:@""];
    cost.text = [NSString stringWithFormat:@"         Locked"];
    
    alienPic.hidden = TRUE;
    bunnyPic.hidden = TRUE;
    dragonPic.hidden = TRUE;
    ghostPic.hidden = TRUE;
    goldPic.hidden = TRUE;
    ninjaPic.hidden = TRUE;
    rocketPic.hidden = TRUE;
    unicornPic.hidden = TRUE;
    icePic.hidden = TRUE;
    metalPic.hidden = TRUE;
    britishPic.hidden = TRUE;
    defaultPic.hidden = TRUE;
    
    originaBackground.hidden = TRUE;
    backgroundOne.hidden = TRUE;
    backgroundTwo.hidden = TRUE;
    backgroundThree.hidden = TRUE;
    backgroundFour.hidden = TRUE;
    backgroundFive.hidden = TRUE;
    backgroundSix.hidden = TRUE;
    backgroundSeven.hidden = TRUE;
    backgroundEight.hidden = TRUE;
    backgroundNine.hidden = FALSE;
    backgroundTen.hidden = TRUE;
    
    index = 22;
    backIndex = 9;
    
    if (owned == 1) {
        cost.text = [NSString stringWithFormat:@""];
         howToLabel.text = [NSString stringWithFormat:@""];
        selectButton.hidden = FALSE;
        selectedLabel.hidden = FALSE;
         checkMark.hidden = FALSE;
        if (backgroundSelected == 9) {
             howToLabel.hidden = TRUE;
            selectButton.hidden = TRUE;
            selectedLabel.hidden = FALSE;
        }
    }
    if (owned == 0) {
         checkMark.hidden = TRUE;
        howToLabel.hidden = FALSE;
        selectButton.hidden = TRUE; 
         selectedLabel.hidden = TRUE;
        howToLabel.text = [NSString stringWithFormat:@"Reach Flex Level 30 to unlock"];
    }

}
-(IBAction)backgroundTen:(id)sender{
     topazPic.hidden = TRUE;
    buyButton.hidden = TRUE;
    int backgroundSelected =[[NSUserDefaults standardUserDefaults] integerForKey:@"backgroundSelected"];
    int owned =[[NSUserDefaults standardUserDefaults] integerForKey:@"backgroundTenOwn"];
    
    titleSlider.text = [NSString stringWithFormat:@"Distant Lands"];
    description.text = [NSString stringWithFormat:@""];
    cost.text = [NSString stringWithFormat:@"         Locked"];
    
    alienPic.hidden = TRUE;
    bunnyPic.hidden = TRUE;
    dragonPic.hidden = TRUE;
    ghostPic.hidden = TRUE;
    goldPic.hidden = TRUE;
    ninjaPic.hidden = TRUE;
    rocketPic.hidden = TRUE;
    unicornPic.hidden = TRUE;
    icePic.hidden = TRUE;
    metalPic.hidden = TRUE;
    britishPic.hidden = TRUE;
    defaultPic.hidden = TRUE;
    
    originaBackground.hidden = TRUE;
    backgroundOne.hidden = TRUE;
    backgroundTwo.hidden = TRUE;
    backgroundThree.hidden = TRUE;
    backgroundFour.hidden = TRUE;
    backgroundFive.hidden = TRUE;
    backgroundSix.hidden = TRUE;
    backgroundSeven.hidden = TRUE;
    backgroundEight.hidden = TRUE;
    backgroundNine.hidden = TRUE;
    backgroundTen.hidden = FALSE;
    
    index = 23;
    backIndex = 10;
  
    if (owned == 1) {
        cost.text = [NSString stringWithFormat:@""];
         howToLabel.text = [NSString stringWithFormat:@""];
        selectButton.hidden = FALSE;
        selectedLabel.hidden = FALSE;
         checkMark.hidden = FALSE;
        if (backgroundSelected == 10) {
             howToLabel.hidden = TRUE;
            selectButton.hidden = TRUE;
             selectedLabel.hidden = FALSE;
        }

    }
    if (owned == 0) {
        checkMark.hidden = TRUE;
        howToLabel.hidden = FALSE;
        selectButton.hidden = TRUE;  
        selectedLabel.hidden = TRUE;
         howToLabel.text = [NSString stringWithFormat:@"Reach Flex Level 50 to unlock"];
    }

}

-(void)usingIt {
    
    int sSlider =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
    int sBackground =[[NSUserDefaults standardUserDefaults] integerForKey:@"backgroundSelected"];
    defaultPicUsing.hidden = TRUE;
    alienPicUsing.hidden = TRUE;
    bunnyPicUsing.hidden = TRUE;
    dragonPicUsing.hidden = TRUE;
    ghostPicUsing.hidden = TRUE;
    goldPicUsing.hidden = TRUE;
    ninjaPicUsing.hidden = TRUE;
    rocketPicUsing.hidden = TRUE;
    unicornPicUsing.hidden = TRUE;
    icePicUsing.hidden = TRUE;
    metalPicUsing.hidden = TRUE;
    britishPicUsing.hidden = TRUE; 
    
    originaBackgroundUsing.hidden = TRUE;
    backgroundOneUsing.hidden = TRUE;
    backgroundTwoUsing.hidden = TRUE;
    backgroundThreeUsing.hidden = TRUE;
    backgroundFourUsing.hidden = TRUE;
    backgroundFiveUsing.hidden = TRUE;
    backgroundSixUsing.hidden = TRUE;
    backgroundSevenUsing.hidden = TRUE;
    backgroundEightUsing.hidden = TRUE;
    backgroundNineUsing.hidden = TRUE;
    backgroundTenUsing.hidden = TRUE;
    
    if (sSlider == 0) {
        defaultPicUsing.hidden = FALSE;
    }
    if (sSlider == 1) {
        alienPicUsing.hidden = FALSE;
    }
    if (sSlider == 2) {
        bunnyPicUsing.hidden = FALSE;
    }
    if (sSlider == 3) {
        goldPicUsing.hidden = FALSE;
    }
    if (sSlider == 4) {
        icePicUsing.hidden = FALSE;
    }
    if (sSlider == 6) {
        ghostPicUsing.hidden = FALSE;
    }
    if (sSlider == 7) {
        dragonPicUsing.hidden = FALSE;
    }
    if (sSlider == 8) {
        unicornPicUsing.hidden = FALSE;
    }
    if (sSlider == 9) {
        britishPicUsing.hidden = FALSE;
    }
    if (sSlider == 10) {
        metalPicUsing.hidden = FALSE;
    }
    if (sSlider == 11) {
        rocketPicUsing.hidden = FALSE;
    }
    if (sSlider == 12) {
        ninjaPicUsing.hidden = FALSE;
    }
    ////////
    if (sBackground == 0) {
        originaBackgroundUsing.hidden = FALSE;
    }
    if (sBackground == 1) {
        backgroundOneUsing.hidden = FALSE;
    }
    if (sBackground == 2) {
        backgroundTwoUsing.hidden = FALSE;
    }
    if (sBackground == 3) {
        backgroundThreeUsing.hidden = FALSE;
    }
    if (sBackground == 4) {
        backgroundFourUsing.hidden = FALSE;
    }
    if (sBackground == 5) {
        backgroundFiveUsing.hidden = FALSE;
    }
    if (sBackground == 6) {
        backgroundSixUsing.hidden = FALSE;
    }
    if (sBackground == 7) {
       backgroundSevenUsing.hidden = FALSE;
    }
    if (sBackground == 8) {
        backgroundEightUsing.hidden = FALSE;
    }
    if (sBackground == 9) {
       backgroundNineUsing.hidden = FALSE;
    }
    if (sBackground == 10) {
        backgroundTenUsing.hidden = FALSE;
    }
    
}

-(void)ownIt{
    
    int alien =[[NSUserDefaults standardUserDefaults] floatForKey:@"ownAlien"];
    int bunny =[[NSUserDefaults standardUserDefaults] floatForKey:@"ownBunny"];
    int drag =[[NSUserDefaults standardUserDefaults] floatForKey:@"ownDragon"];
    int ghost =[[NSUserDefaults standardUserDefaults] floatForKey:@"ownGhost"];
    int money =[[NSUserDefaults standardUserDefaults] floatForKey:@"ownMoney"];
    int ninja =[[NSUserDefaults standardUserDefaults] floatForKey:@"ownNinja"];
    int shuttle =[[NSUserDefaults standardUserDefaults] floatForKey:@"ownShuttle"];
    int unicorn =[[NSUserDefaults standardUserDefaults] floatForKey:@"ownUnicorn"];
    int ice =[[NSUserDefaults standardUserDefaults] floatForKey:@"ownIce"];
    int metal =[[NSUserDefaults standardUserDefaults] floatForKey:@"ownMetal"];
    int flag =[[NSUserDefaults standardUserDefaults] floatForKey:@"ownFlag"];
    int one =[[NSUserDefaults standardUserDefaults] integerForKey:@"backgroundOneOwn"];
    int two =[[NSUserDefaults standardUserDefaults] integerForKey:@"backgroundTwoOwn"];
    int three =[[NSUserDefaults standardUserDefaults] integerForKey:@"backgroundThreeOwn"];
    int four =[[NSUserDefaults standardUserDefaults] integerForKey:@"backgroundFourOwn"];
    int five =[[NSUserDefaults standardUserDefaults] integerForKey:@"backgroundFiveOwn"];
    int six =[[NSUserDefaults standardUserDefaults] integerForKey:@"backgroundSixOwn"];
    int seven =[[NSUserDefaults standardUserDefaults] integerForKey:@"backgroundSevenOwn"];
    int eight =[[NSUserDefaults standardUserDefaults] integerForKey:@"backgroundEightOwn"];
    int nine =[[NSUserDefaults standardUserDefaults] integerForKey:@"backgroundNineOwn"];
    int ten =[[NSUserDefaults standardUserDefaults] integerForKey:@"backgroundTenOwn"]; 
    
    alienPicOwn.hidden = TRUE;
    bunnyPicOwn.hidden = TRUE;
    dragonPicOwn.hidden = TRUE;
    ghostPicOwn.hidden = TRUE;
    goldPicOwn.hidden = TRUE;
    ninjaPicOwn.hidden = TRUE;
    rocketPicOwn.hidden = TRUE;
    unicornPicOwn.hidden = TRUE;
    icePicOwn.hidden = TRUE;
    metalPicOwn.hidden = TRUE;
    britishPicOwn.hidden = TRUE; 
    
    backgroundOneOwn.hidden = TRUE;
    backgroundTwoOwn.hidden = TRUE;
    backgroundThreeOwn.hidden = TRUE;
    backgroundFourOwn.hidden = TRUE;
    backgroundFiveOwn.hidden = TRUE;
    backgroundSixOwn.hidden = TRUE;
    backgroundSevenOwn.hidden = TRUE;
    backgroundEightOwn.hidden = TRUE;
    backgroundNineOwn.hidden = TRUE;
    backgroundTenOwn.hidden = TRUE;
    if (alien == 1) {
        alienPicOwn.hidden = FALSE;
    }
    if (bunny == 1) {
        bunnyPicOwn.hidden = FALSE;
    }
    if (drag == 1) {
        dragonPicOwn.hidden = FALSE;
    }
    if (ghost == 1) {
        ghostPicOwn.hidden = FALSE;
    }
    if (money == 1) {
        goldPicOwn.hidden = FALSE;
    }
    if (ninja == 1) {
        ninjaPicOwn.hidden = FALSE;
    }
    if (shuttle == 1) {
        rocketPicOwn.hidden = FALSE;
    }
    if (unicorn == 1) {
        unicornPicOwn.hidden = FALSE;
    }
    if (ice == 1) {
        icePicOwn.hidden = FALSE;
    }
    if (metal == 1) {
        metalPicOwn.hidden = FALSE;
    }
    if (flag == 1) {
        britishPicOwn.hidden = FALSE;
    }
    if (one == 1) {
        backgroundOneOwn.hidden = FALSE;
    }
    if (two == 1) {
        backgroundTwoOwn.hidden = FALSE;
    }
    if (three == 1) {
        backgroundThreeOwn.hidden = FALSE;
    }
    if (four == 1) {
        backgroundFourOwn.hidden = FALSE;
    }
    if (five == 1) {
        backgroundFiveOwn.hidden = FALSE;
    }
    if (six == 1) {
        backgroundSixOwn.hidden = FALSE;
    }
    if (seven == 1) {
        backgroundSevenOwn.hidden = FALSE;
    }
    if (eight == 1) {
        backgroundEightOwn.hidden = FALSE;
    }
    if (nine == 1) {
        backgroundNineOwn.hidden = FALSE;
    }
    if (ten == 1) {
        backgroundTenOwn.hidden = FALSE;
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
    
    [[NSUserDefaults standardUserDefaults] setObject:@"shop" forKey:@"location"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    canSound =[[NSUserDefaults standardUserDefaults] integerForKey:@"sound"];
    int already =[[NSUserDefaults standardUserDefaults] integerForKey:@"shopMusic"];
   
    if (canSound == 0 && already == 0) {
        slidemastersAppDelegate *appDelegate = (slidemastersAppDelegate *)[[UIApplication sharedApplication] delegate];
        [appDelegate qShopMusic];    
        already = 1;
        [[NSUserDefaults standardUserDefaults] setInteger:already forKey:@"shopMusic"];  
        [[NSUserDefaults standardUserDefaults] synchronize];
        }

    howToLabel.hidden = TRUE;
    [selectedLabel setFont:[UIFont fontWithName:@"Krona One" size:20]];
    [howToLabel setFont:[UIFont fontWithName:@"Krona One" size:12]];
    
    int topaz =[[NSUserDefaults standardUserDefaults] floatForKey:@"coins"];
    
     [titleSlider setFont:[UIFont fontWithName:@"Krona One" size:35]];
     [description setFont:[UIFont fontWithName:@"Krona One" size:17]];
     [cost setFont:[UIFont fontWithName:@"Krona One" size:17]];
    
    playerBank.text = [NSString stringWithFormat:@"%i",topaz];
    [playerBank setFont:[UIFont fontWithName:@"Krona One" size:14]];
    backIndex = -2;
    
    [shopview setScrollEnabled:YES];
    [shopview setContentSize:CGSizeMake(77,2250)];
    int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
    
    
    if (sliderselected == 0) {
        [self defaultSlider:(id)self];   
    }
    if (sliderselected == 1) {
        [self alien:(id)self];
    }
    if (sliderselected == 2) {
        [self bunny:(id)self];
    }
    if (sliderselected == 3) {
        [self gold:(id)self];
    }
    if (sliderselected == 4) {
       [self ice:(id)self];
    }
    if (sliderselected == 6) {
        [self ghost:(id)self];
    }
    if (sliderselected == 7) {
        [self dragon:(id)self];
    }
    if (sliderselected == 8) {
        [self unicorn:(id)self];
    }
    if (sliderselected == 9) {
        [self british:(id)self];
    }
    if (sliderselected == 10) {
        [self metal:(id)self];
    }
    if (sliderselected == 11) {
        [self rocket:(id)self];
    }
    if (sliderselected == 12) {
        [self ninja:(id)self];
    }
    [self ownIt];
    [self usingIt];
           
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
