//
//  TheStory.m
//  Slide Masters
//
//  Created by Blake Campbell on 12/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TheStory.h"
#import "slidemastersViewController.h"
#import "levelselect.h"
#import "loadingtut.h"
@implementation TheStory
@synthesize master;
@synthesize mastertextbox;
@synthesize blaze;
@synthesize blazetextbox;
@synthesize speechbubble;


-(IBAction)skip:(id)sender{
    [timer invalidate];
    slidemastersAppDelegate *appDelegate = (slidemastersAppDelegate *)[[UIApplication sharedApplication] delegate];
    [appDelegate stopMusic];
    loadingtut *Sword = [[loadingtut alloc] initWithNibName:nil bundle:nil];
    [self presentModalViewController:Sword animated:YES];
}
-(IBAction)toggle:(id)sender{
    onoff++;
    int test = onoff %2;
    if (test == 1) {
        skip.hidden = FALSE;
        hideSkip = 1;
    }
    if (test == 0) {
        hideSkip = 0;
        skip.hidden = TRUE;
    }
        
}

-(void)counting{
time = time +1;
    if (hideSkip > 0) {
        hideSkip++;
        if (hideSkip == 60) {
            hideSkip = 0;
            skip.hidden = TRUE;
            onoff = 0;
        }
    }
if(method == 0){
    if (time ==30) { 
        mastertextbox.hidden = FALSE;
        label.text = [NSString stringWithFormat:@"W"];
    }
    if (time ==31) {
        label.text = [NSString stringWithFormat:@"We"];
    }
    if (time ==32) {
        label.text = [NSString stringWithFormat:@"Wel"];
    }
    if (time ==33) {
        label.text = [NSString stringWithFormat:@"Well"];
    }
    if (time ==34) {
        label.text = [NSString stringWithFormat:@"Well h"];
    }
    if (time ==35) {
        label.text = [NSString stringWithFormat:@"Well he"];
    }
    if (time ==36) {
        label.text = [NSString stringWithFormat:@"Well hel"];
    }
    if (time ==37) {
        label.text = [NSString stringWithFormat:@"Well hell"];
    }
    if (time ==38) {
        label.text = [NSString stringWithFormat:@"Well hello"];
    }
    if (time ==39) {
        label.text = [NSString stringWithFormat:@"Well hello t"];
    }
    if (time ==40) {
        label.text = [NSString stringWithFormat:@"Well hello th"];
    }
    if (time ==41) {
        label.text = [NSString stringWithFormat:@"Well hello the"];
    }
    if (time ==42) {
        label.text = [NSString stringWithFormat:@"Well hello ther"];
    }
    if (time ==43) {
        label.text = [NSString stringWithFormat:@"Well hello there"];
    }
    if (time >=44) {
        label.text = [NSString stringWithFormat:@"Well hello there!"];
        time = 15;
        method = 1;
    }

}    
if(method == 1){
    if (time == 40) {
        label.text = [NSString stringWithFormat:@"A"];
    }
    if (time == 41) {
        label.text = [NSString stringWithFormat:@"As"];
    }
    if (time == 42) {
        label.text = [NSString stringWithFormat:@"As y"];
    }
    if (time == 43) {
        label.text = [NSString stringWithFormat:@"As yo"];
    }

    if (time == 44) {
        label.text = [NSString stringWithFormat:@"As you"];
    }

    if (time == 45) {
        label.text = [NSString stringWithFormat:@"As you p"];
    }

    if (time == 46) {
        label.text = [NSString stringWithFormat:@"As you pr"];
    }

    if (time == 47) {
        label.text = [NSString stringWithFormat:@"As you pro"];
    }

    if (time == 48) {
        label.text = [NSString stringWithFormat:@"As you prob"];
    }

    if (time == 49) {
        label.text = [NSString stringWithFormat:@"As you proba"];
    }

    if (time == 50) {
        label.text = [NSString stringWithFormat:@"As you probab"];
    }

    if (time == 51) {
        label.text = [NSString stringWithFormat:@"As you probabl"];
    }

    if (time == 52) {
        label.text = [NSString stringWithFormat:@"As you probably"];
    }

    if (time == 53) {
        label.text = [NSString stringWithFormat:@"As you probably a"];
    }

    if (time == 54) {
        label.text = [NSString stringWithFormat:@"As you probably al"];
    }

    if (time == 55) {
        label.text = [NSString stringWithFormat:@"As you probably alr"];
    }

    if (time == 56) {
        label.text = [NSString stringWithFormat:@"As you probably alre"];
    }

    if (time == 57) {
        label.text = [NSString stringWithFormat:@"As you probably alrea"];
    }

    if (time == 58) {
        label.text = [NSString stringWithFormat:@"As you probably alread"];
    }

    if (time == 59) {
        label.text = [NSString stringWithFormat:@"As you probably already"];
    }
    if (time == 60) {
        label.text = [NSString stringWithFormat:@"As you probably already k"];
    }

    if (time == 61) {
        label.text = [NSString stringWithFormat:@"As you probably already kn"];
    }

    if (time == 62) {
        label.text = [NSString stringWithFormat:@"As you probably already kno"];
    }

    if (time == 63) {
        label.text = [NSString stringWithFormat:@"As you probably already know"];
    }

    if (time == 64) {
        label.text = [NSString stringWithFormat:@"As you probably already know I"];
    }

    if (time == 65) {
        label.text = [NSString stringWithFormat:@"As you probably already know I a"];
    }

    if (time == 66) {
        label.text = [NSString stringWithFormat:@"As you probably already know I am"];
    }

    if (time == 67) {
        label.text = [NSString stringWithFormat:@"As you probably already know I am t"];
    }

    if (time == 68) {
        label.text = [NSString stringWithFormat:@"As you probably already know I am th"];
    }

    if (time == 69) {
        label.text = [NSString stringWithFormat:@"As you probably already know I am the"];
    }

    if (time == 70) {
        label.text = [NSString stringWithFormat:@"As you probably already know I am the c"];
    }

    if (time == 71) {
        label.text = [NSString stringWithFormat:@"As you probably already know I am the cu"];
    }

    if (time == 72) {
        label.text = [NSString stringWithFormat:@"As you probably already know I am the cur"];
    }

    if (time == 73) {
        label.text = [NSString stringWithFormat:@"As you probably already know I am the curr"];
    }

    if (time == 74) {
        label.text = [NSString stringWithFormat:@"As you probably already know I am the curre"];
    }

    if (time == 75) {
        label.text = [NSString stringWithFormat:@"As you probably already know I am the curren"];
    }

    if (time == 76) {
        label.text = [NSString stringWithFormat:@"As you probably already know I am the current"];
    }

    if (time == 78) {
        label.text = [NSString stringWithFormat:@"As you probably already know I am the current S"];
    }

    if (time == 79) {
        label.text = [NSString stringWithFormat:@"As you probably already know I am the current Sl"];
    }
    if (time == 80) {
        label.text = [NSString stringWithFormat:@"As you probably already know I am the current Sli"];
    }
    if (time == 81) {
        label.text = [NSString stringWithFormat:@"As you probably already know I am the current Slid"];
    }
    if (time == 82) {
        label.text = [NSString stringWithFormat:@"As you probably already know I am the current Slide"];
    }
    if (time == 83) {
        label.text = [NSString stringWithFormat:@"As you probably already know I am the current Slide M"];
    }
    if (time == 84) {
        label.text = [NSString stringWithFormat:@"As you probably already know I am the current Slide Ma"];
    }
    if (time == 85) {
        label.text = [NSString stringWithFormat:@"As you probably already know I am the current Slide Mas"];
    }
    if (time == 86) {
        label.text = [NSString stringWithFormat:@"As you probably already know I am the current Slide Mast"];
    }
    if (time == 87) {
        label.text = [NSString stringWithFormat:@"As you probably already know I am the current Slide Maste"];
    }
    if (time == 88) {
        label.text = [NSString stringWithFormat:@"As you probably already know I am the current Slide Master"];
    }
    if (time == 89) {
        label.text = [NSString stringWithFormat:@"As you probably already know I am the current Slide Master."];
        time = 41;
        method = 2;
    }


}
if(method == 2){
        if (time == 61) {
            label.text = [NSString stringWithFormat:@"I"];
        }
        if (time == 62) {
            label.text = [NSString stringWithFormat:@"I h"];
        }
        if (time == 63) {
            label.text = [NSString stringWithFormat:@"I ha"];
        }
        if (time == 64) {
            label.text = [NSString stringWithFormat:@"I hav"];
        }
        if (time == 65) {
            label.text = [NSString stringWithFormat:@"I have"];
        }
        if (time == 66) {
            label.text = [NSString stringWithFormat:@"I have b"];
        }
        if (time == 67) {
            label.text = [NSString stringWithFormat:@"I have be"];
        }
        if (time == 68) {
            label.text = [NSString stringWithFormat:@"I have bee"];
        }
        if (time == 69) {
            label.text = [NSString stringWithFormat:@"I have been"];
        }
        if (time == 70) {
            label.text = [NSString stringWithFormat:@"I have been S"];
        }
        if (time == 71) {
            label.text = [NSString stringWithFormat:@"I have been Sl"];
        }
        if (time == 72) {
            label.text = [NSString stringWithFormat:@"I have been Sli"];
        }
        if (time == 73) {
            label.text = [NSString stringWithFormat:@"I have been Slid"];
        }
        if (time == 74) {
            label.text = [NSString stringWithFormat:@"I have been Slide"];
        }
        if (time == 75) {
            label.text = [NSString stringWithFormat:@"I have been Slide M"];
        }
        if (time == 76) {
            label.text = [NSString stringWithFormat:@"I have been Slide Ma"];
        }
        if (time == 77) {
            label.text = [NSString stringWithFormat:@"I have been Slide Mas"];
        }
        if (time == 78) {
            label.text = [NSString stringWithFormat:@"I have been Slide Mast"];
        }
        if (time == 79) {
            label.text = [NSString stringWithFormat:@"I have been Slide Maste"];
        }
        if (time == 80) {
            label.text = [NSString stringWithFormat:@"I have been Slide Master"];
        }
        if (time == 81) {
            label.text = [NSString stringWithFormat:@"I have been Slide Master f"];
        }
        if (time == 82) {
            label.text = [NSString stringWithFormat:@"I have been Slide Master fo"];
        }
        if (time == 83) {
            label.text = [NSString stringWithFormat:@"I have been Slide Master for"];
        }
        if (time == 84) {
            label.text = [NSString stringWithFormat:@"I have been Slide Master for m"];
        }
        if (time == 85) {
            label.text = [NSString stringWithFormat:@"I have been Slide Master for ma"];
        }
        if (time == 86) {
            label.text = [NSString stringWithFormat:@"I have been Slide Master for man"];
        }
        if (time == 87) {
            label.text = [NSString stringWithFormat:@"I have been Slide Master for many"];
        }
        if (time == 88) {
            label.text = [NSString stringWithFormat:@"I have been Slide Master for many c."];
        }
        if (time == 89) {
            label.text = [NSString stringWithFormat:@"I have been Slide Master for many ce"];
        }
        if (time == 90) {
            label.text = [NSString stringWithFormat:@"I have been Slide Master for many cen"];
        }
        if (time == 91) {
            label.text = [NSString stringWithFormat:@"I have been Slide Master for many cent"];
        }
        if (time == 92) {
            label.text = [NSString stringWithFormat:@"I have been Slide Master for many centu"];
        }
        if (time == 93) {
            label.text = [NSString stringWithFormat:@"I have been Slide Master for many centur"];
        }
        if (time == 94) {
            label.text = [NSString stringWithFormat:@"I have been Slide Master for many centuri"];
        }
        if (time == 95) {
            label.text = [NSString stringWithFormat:@"I have been Slide Master for many centurie"];
        }
        if (time == 96) {
            label.text = [NSString stringWithFormat:@"I have been Slide Master for many centuries"];
        }
        if (time == 97) {
            label.text = [NSString stringWithFormat:@"I have been Slide Master for many centuries."];
            time = 30;
            method =3;
        }
    }
if(method == 3){
        if (time == 61) {
            label.text = [NSString stringWithFormat:@"U"];
        }
        if (time == 62) {
            label.text = [NSString stringWithFormat:@"Un"];
        } 
        if (time == 63) {
            label.text = [NSString stringWithFormat:@"Unf"];
        } 
        if (time == 64) {
            label.text = [NSString stringWithFormat:@"Unfo"];
        } 
        if (time == 65) {
            label.text = [NSString stringWithFormat:@"Unfor"];
        } 
        if (time == 66) {
            label.text = [NSString stringWithFormat:@"Unfort"];
        } 
        if (time == 67) {
            label.text = [NSString stringWithFormat:@"Unfortu"];
        } 
        if (time == 68) {
            label.text = [NSString stringWithFormat:@"Unfortun"];
        } 
        if (time == 69) {
            label.text = [NSString stringWithFormat:@"Unfortuna"];
        } 
        if (time == 70) {
            label.text = [NSString stringWithFormat:@"Unfortunat"];
        } 
        if (time == 71) {
            label.text = [NSString stringWithFormat:@"Unfortunate"];
        } 
        if (time == 72) {
            label.text = [NSString stringWithFormat:@"Unfortunatel"];
        } 
        if (time == 73) {
            label.text = [NSString stringWithFormat:@"Unfortunately"];
        } 
        if (time == 74) {
            label.text = [NSString stringWithFormat:@"Unfortunately,"];
        } 
        if (time == 75) {
            label.text = [NSString stringWithFormat:@"Unfortunately, m"];
        } 
        if (time == 76) {
            label.text = [NSString stringWithFormat:@"Unfortunately, my"];
        } 
        if (time == 77) {
            label.text = [NSString stringWithFormat:@"Unfortunately, my t"];
        } 
        if (time == 78) {
            label.text = [NSString stringWithFormat:@"Unfortunately, my ti"];
        } 
        if (time == 79) {
            label.text = [NSString stringWithFormat:@"Unfortunately, my tim"];
        } 
        if (time == 80) {
            label.text = [NSString stringWithFormat:@"Unfortunately, my time"];
        } 
        if (time == 81) {
            label.text = [NSString stringWithFormat:@"Unfortunately, my time h"];
        } 
        if (time == 82) {
            label.text = [NSString stringWithFormat:@"Unfortunately, my time ha"];
        } 
        if (time == 83) {
            label.text = [NSString stringWithFormat:@"Unfortunately, my time has"];
        } 
        if (time == 84) {
            label.text = [NSString stringWithFormat:@"Unfortunately, my time has c"];
        } 
        if (time == 85) {
            label.text = [NSString stringWithFormat:@"Unfortunately, my time has co"];
        } 
        if (time == 86) {
            label.text = [NSString stringWithFormat:@"Unfortunately, my time has com"];
        } 
        if (time == 87) {
            label.text = [NSString stringWithFormat:@"Unfortunately, my time has come"];
        } 
        if (time == 88) {
            label.text = [NSString stringWithFormat:@"Unfortunately, my time has come t"];
        } 
        if (time == 89) {
            label.text = [NSString stringWithFormat:@"Unfortunately, my time has come to"];
        } 
        if (time == 90) {
            label.text = [NSString stringWithFormat:@"Unfortunately, my time has come to a"];
        } 
        if (time == 91) {
            label.text = [NSString stringWithFormat:@"Unfortunately, my time has come to an"];
        } 
        if (time == 92) {
            label.text = [NSString stringWithFormat:@"Unfortunately, my time has come to an e"];
        } 
        if (time == 93) {
            label.text = [NSString stringWithFormat:@"Unfortunately, my time has come to an en"];
        } 
        if (time == 94) {
            label.text = [NSString stringWithFormat:@"Unfortunately, my time has come to an end"];
        } 
        if (time == 95) {
            label.text = [NSString stringWithFormat:@"Unfortunately, my time has come to an end a"];
        } 
        if (time == 96) {
            label.text = [NSString stringWithFormat:@"Unfortunately, my time has come to an end an"];
        } 
        if (time == 97) {
            label.text = [NSString stringWithFormat:@"Unfortunately, my time has come to an end and"];
        } 
        if (time == 98) {
            label.text = [NSString stringWithFormat:@"Unfortunately, my time has come to an end and a"];
        } 
        if (time == 99) {
            label.text = [NSString stringWithFormat:@"Unfortunately, my time has come to an end and a n"];
        } 
        if (time == 100) {
            label.text = [NSString stringWithFormat:@"Unfortunately, my time has come to an end and a ne"];
        } 
        if (time == 101) {
            label.text = [NSString stringWithFormat:@"Unfortunately, my time has come to an end and a new"];
        } 
        if (time == 102) {
            label.text = [NSString stringWithFormat:@"Unfortunately, my time has come to an end and a new s"];
        } 
        if (time == 103) {
            label.text = [NSString stringWithFormat:@"Unfortunately, my time has come to an end and a new so"];
        } 
        if (time == 104) {
            label.text = [NSString stringWithFormat:@"Unfortunately, my time has come to an end and a new sou"];
        } 
        if (time == 105) {
            label.text = [NSString stringWithFormat:@"Unfortunately, my time has come to an end and a new soul"];
        } 
        if (time == 106) {
            label.text = [NSString stringWithFormat:@"Unfortunately, my time has come to an end and a new soul m"];
        } 
        if (time == 107) {
            label.text = [NSString stringWithFormat:@"Unfortunately, my time has come to an end and a new soul mu"];
        } 
        if (time == 108) {
            label.text = [NSString stringWithFormat:@"Unfortunately, my time has come to an end and a new soul mus"];
        } 
        if (time == 109) {
            label.text = [NSString stringWithFormat:@"Unfortunately, my time has come to an end and a new soul must"];
        } 
        if (time == 110) {
            label.text = [NSString stringWithFormat:@"Unfortunately, my time has come to an end and a new soul must t"];
        } 
        if (time == 111) {
            label.text = [NSString stringWithFormat:@"Unfortunately, my time has come to an end and a new soul must ta"];
        } 
        if (time == 112) {
            label.text = [NSString stringWithFormat:@"Unfortunately, my time has come to an end and a new soul must tak"];
        } 
        if (time == 113) {
            label.text = [NSString stringWithFormat:@"Unfortunately, my time has come to an end and a new soul must take"];
        } 
        if (time == 114) {
            label.text = [NSString stringWithFormat:@"Unfortunately, my time has come to an end and a new soul must take m"];
        } 
        if (time == 115) {
            label.text = [NSString stringWithFormat:@"Unfortunately, my time has come to an end and a new soul must take my"];
        } 
        if (time == 116) {
            label.text = [NSString stringWithFormat:@"Unfortunately, my time has come to an end and a new soul must take my p"];
        } 
        if (time == 117) {
            label.text = [NSString stringWithFormat:@"Unfortunately, my time has come to an end and a new soul must take my pl"];
        } 
        if (time == 118) {
            label.text = [NSString stringWithFormat:@"Unfortunately, my time has come to an end and a new soul must take my pla"];
        } 
        if (time == 119) {
            label.text = [NSString stringWithFormat:@"Unfortunately, my time has come to an end and a new soul must take my plac"];
        } 
        if (time == 120) {
            label.text = [NSString stringWithFormat:@"Unfortunately, my time has come to an end and a new soul must take my place"];
        } 
        if (time == 121) {
            label.text = [NSString stringWithFormat:@"Unfortunately, my time has come to an end and a new soul must take my place."];
            time = 50;
            method = 4;
        } 


    }
if(method == 4){
        if (time == 100) {
            label.text = [NSString stringWithFormat:@"I"];
        }
        if (time == 101) {
            label.text = [NSString stringWithFormat:@"It"];
        }
        if (time == 102) {
            label.text = [NSString stringWithFormat:@"It i"];
        }
        if (time == 103) {
            label.text = [NSString stringWithFormat:@"It is"];
        }
        if (time == 104) {
            label.text = [NSString stringWithFormat:@"It is w"];
        }
        if (time == 105) {
            label.text = [NSString stringWithFormat:@"It is wr"];
        }
        if (time == 106) {
            label.text = [NSString stringWithFormat:@"It is wri"];
        }
        if (time == 107) {
            label.text = [NSString stringWithFormat:@"It is writ"];
        }
        if (time == 108) {
            label.text = [NSString stringWithFormat:@"It is writt"];
        }
        if (time == 109) {
            label.text = [NSString stringWithFormat:@"It is writte"];
        }
        if (time == 110) {
            label.text = [NSString stringWithFormat:@"It is written"];
        }
        if (time == 111) {
            label.text = [NSString stringWithFormat:@"It is written t"];
        }
        if (time == 112) {
            label.text = [NSString stringWithFormat:@"It is written th"];
        }
        if (time == 113) {
            label.text = [NSString stringWithFormat:@"It is written tha"];
        }
        if (time == 114) {
            label.text = [NSString stringWithFormat:@"It is written that"];
        }
        if (time == 115) {
            label.text = [NSString stringWithFormat:@"It is written that o"];
        }
        if (time == 116) {
            label.text = [NSString stringWithFormat:@"It is written that on"];
        }
        if (time == 117) {
            label.text = [NSString stringWithFormat:@"It is written that onl"];
        }
        if (time == 118) {
            label.text = [NSString stringWithFormat:@"It is written that only"];
        }
        if (time == 119) {
            label.text = [NSString stringWithFormat:@"It is written that only t"];
        }
        if (time == 120) {
            label.text = [NSString stringWithFormat:@"It is written that only th"];
        }
        if (time == 121) {
            label.text = [NSString stringWithFormat:@"It is written that only the"];
        }
        if (time == 122) {
            label.text = [NSString stringWithFormat:@"It is written that only the g"];
        }
        if (time == 123) {
            label.text = [NSString stringWithFormat:@"It is written that only the gr"];
        }
        if (time == 124) {
            label.text = [NSString stringWithFormat:@"It is written that only the gre"];
        }
        if (time == 125) {
            label.text = [NSString stringWithFormat:@"It is written that only the grea"];
        }
        if (time == 126) {
            label.text = [NSString stringWithFormat:@"It is written that only the great"];
        }
        if (time == 127) {
            label.text = [NSString stringWithFormat:@"It is written that only the greate"];
        }
        if (time == 128) {
            label.text = [NSString stringWithFormat:@"It is written that only the greates"];
        }
        if (time == 129) {
            label.text = [NSString stringWithFormat:@"It is written that only the greatest"];
        }
        if (time == 130) {
            label.text = [NSString stringWithFormat:@"It is written that only the greatest s"];
        }
        if (time == 131) {
            label.text = [NSString stringWithFormat:@"It is written that only the greatest sl"];
        }
        if (time == 132) {
            label.text = [NSString stringWithFormat:@"It is written that only the greatest sli"];
        }
        if (time == 133) {
            label.text = [NSString stringWithFormat:@"It is written that only the greatest slid"];
        }
        if (time == 134) {
            label.text = [NSString stringWithFormat:@"It is written that only the greatest slide"];
        }
        if (time == 135) {
            label.text = [NSString stringWithFormat:@"It is written that only the greatest slider"];
        }
        if (time == 136) {
            label.text = [NSString stringWithFormat:@"It is written that only the greatest slider c"];
        }
        if (time == 137) {
            label.text = [NSString stringWithFormat:@"It is written that only the greatest slider ca"];
        }
        if (time == 138) {
            label.text = [NSString stringWithFormat:@"It is written that only the greatest slider can"];
        }
        if (time == 139) {
            label.text = [NSString stringWithFormat:@"It is written that only the greatest slider can b"];
        }
        if (time == 140) {
            label.text = [NSString stringWithFormat:@"It is written that only the greatest slider can be"];
        }
        if (time == 141) {
            label.text = [NSString stringWithFormat:@"It is written that only the greatest slider can bec"];
        }
        if (time == 142) {
            label.text = [NSString stringWithFormat:@"It is written that only the greatest slider can beco"];
        }
        if (time == 143) {
            label.text = [NSString stringWithFormat:@"It is written that only the greatest slider can becom"];
        }
        if (time == 144) {
            label.text = [NSString stringWithFormat:@"It is written that only the greatest slider can become"];
        }
        if (time == 145) {
            label.text = [NSString stringWithFormat:@"It is written that only the greatest slider can become t"];
        }
        if (time == 146) {
            label.text = [NSString stringWithFormat:@"It is written that only the greatest slider can become th"];
        }
        if (time == 147) {
            label.text = [NSString stringWithFormat:@"It is written that only the greatest slider can become the"];
        }
        if (time == 148) {
            label.text = [NSString stringWithFormat:@"It is written that only the greatest slider can become the S"];
        }
        if (time == 149) {
            label.text = [NSString stringWithFormat:@"It is written that only the greatest slider can become the Sl"];
        }
        if (time == 150) {
            label.text = [NSString stringWithFormat:@"It is written that only the greatest slider can become the Sli"];
        }
        if (time == 151) {
            label.text = [NSString stringWithFormat:@"It is written that only the greatest slider can become the Slid"];
        }
        if (time == 152) {
            label.text = [NSString stringWithFormat:@"It is written that only the greatest slider can become the Slide"];
        }
        if (time == 153) {
            label.text = [NSString stringWithFormat:@"It is written that only the greatest slider can become the Slide M"];
        }
        if (time == 154) {
            label.text = [NSString stringWithFormat:@"It is written that only the greatest slider can become the Slide Ma"];
        }
        if (time == 155) {
            label.text = [NSString stringWithFormat:@"It is written that only the greatest slider can become the Slide Mas"];
        }
        if (time == 156) {
            label.text = [NSString stringWithFormat:@"It is written that only the greatest slider can become the Slide Mast"];
        }
        if (time == 157) {
            label.text = [NSString stringWithFormat:@"It is written that only the greatest slider can become the Slide Maste"];
        }
        if (time == 158) {
            label.text = [NSString stringWithFormat:@"It is written that only the greatest slider can become the Slide Master"];
        }
        if (time == 159) {
            label.text = [NSString stringWithFormat:@"It is written that only the greatest slider can become the Slide Master."];
        }
        if (time == 160) {
            label.text = [NSString stringWithFormat:@"It is written that only the greatest slider can become the Slide Master.."];
        }
        if (time == 161) {
            label.text = [NSString stringWithFormat:@"It is written that only the greatest slider can become the Slide Master..."];
            time = 50;
            method = 5;
        }

    }
if(method == 5){
        if (time == 100) {
            label.text = [NSString stringWithFormat:@"n"];
        }
        if (time == 101) {
            label.text = [NSString stringWithFormat:@"no"];
        }
        if (time == 102) {
            label.text = [NSString stringWithFormat:@"no m"];
        }
        if (time == 103) {
            label.text = [NSString stringWithFormat:@"no ma"];
        }
        if (time == 104) {
            label.text = [NSString stringWithFormat:@"no mat"];
        }
        if (time == 105) {
            label.text = [NSString stringWithFormat:@"no matt"];
        }
        if (time == 106) {
            label.text = [NSString stringWithFormat:@"no matte"];
        }
        if (time == 107) {
            label.text = [NSString stringWithFormat:@"no matter"];
        }
        if (time == 108) {
            label.text = [NSString stringWithFormat:@"no matter i"];
        }
        if (time == 109) {
            label.text = [NSString stringWithFormat:@"no matter if"];
        }
        if (time == 110) {
            label.text = [NSString stringWithFormat:@"no matter if h"];
        }
        if (time == 111) {
            label.text = [NSString stringWithFormat:@"no matter if he"];
        }
        if (time == 112) {
            label.text = [NSString stringWithFormat:@"no matter if he i"];
        }
        if (time == 113) {
            label.text = [NSString stringWithFormat:@"no matter if he is"];
        }
        if (time == 114) {
            label.text = [NSString stringWithFormat:@"no matter if he is g"];
        }
        if (time == 115) {
            label.text = [NSString stringWithFormat:@"no matter if he is go"];
        }
        if (time == 116) {
            label.text = [NSString stringWithFormat:@"no matter if he is go"];
        }
        if (time == 117) {
            label.text = [NSString stringWithFormat:@"no matter if he is goo"];
        }
        if (time == 118) {
            label.text = [NSString stringWithFormat:@"no matter if he is good"];
        }
        if (time == 119) {
            label.text = [NSString stringWithFormat:@"no matter if he is good o"];
        }
        if (time == 120) {
            label.text = [NSString stringWithFormat:@"no matter if he is good or"];
        }
        if (time == 121) {
            label.text = [NSString stringWithFormat:@"no matter if he is good or."];
        }
        if (time == 122) {
            label.text = [NSString stringWithFormat:@"no matter if he is good or.."];
        }
        if (time == 123) {
            label.text = [NSString stringWithFormat:@"no matter if he is good or..."];
            time = 0;
            method = 6;
        }


    }
if(method == 6){
        if (time == 40) {
            speechbubble.hidden = FALSE;
            label2.text = [NSString stringWithFormat:@"W"];
        }
        if (time == 41) {
        label2.text = [NSString stringWithFormat:@"Wh"];
        }
        if (time == 42) {
            label2.text = [NSString stringWithFormat:@"Who"];
        }
        if (time == 43) {
            label2.text = [NSString stringWithFormat:@"Who'"];
        }
        if (time == 44) {
            label2.text = [NSString stringWithFormat:@"Who's"];
        }
        if (time == 45) {
            label2.text = [NSString stringWithFormat:@"Who's t"];
        }
        if (time == 46) {
            label2.text = [NSString stringWithFormat:@"Who's th"];
        }
        if (time == 47) {
            label2.text = [NSString stringWithFormat:@"Who's the"];
        }
        if (time == 48) {
            label2.text = [NSString stringWithFormat:@"Who's the c"];
        }
        if (time == 49) {
            label2.text = [NSString stringWithFormat:@"Who's the ch"];
        }
        if (time == 50) {
            label2.text = [NSString stringWithFormat:@"Who's the chu"];
        }
        if (time == 51) {
            label2.text = [NSString stringWithFormat:@"Who's the chum"];
        }
        if (time == 52) {
            label2.text = [NSString stringWithFormat:@"Who's the chump"];
        }
        if (time == 53) {
            label2.text = [NSString stringWithFormat:@"Who's the chump?"];
        }
        if (time == 100) {
            label.text = [NSString stringWithFormat:@"."];
        }
        if (time == 105) {
            label.text = [NSString stringWithFormat:@".."];
        }
        if (time == 110) {
            label.text = [NSString stringWithFormat:@"..."];
            time = 0;
            method = 7;
        }



    }
if(method == 7){
        if (time == 20) {
            speechbubble.hidden = TRUE;
            label2.text = [NSString stringWithFormat:@""];
            [UIView beginAnimations:nil context:NULL];     
            [UIView setAnimationDuration:1.0];
            [UIView setAnimationRepeatCount:1];
            [UIView setAnimationRepeatAutoreverses:NO];
            [UIView setAnimationDelay:.5];
            
            
            CGPoint position = CGPointMake(160.0f, 240.0f);
            position.y = 202.0f;
            position.x = 159.0f;
            blaze.center = position;
            [UIView commitAnimations];

        }
        if (time == 40) {
        
        [UIView beginAnimations:nil context:NULL];     
        [UIView setAnimationDuration:1.0];
        [UIView setAnimationRepeatCount:1];
        [UIView setAnimationRepeatAutoreverses:NO];
        [UIView setAnimationDelay:0];
        CGPoint position = CGPointMake(160.0f, 240.0f);
        position.y = 202.0f;
        position.x = -110.0f;
        master.center = position;
        [UIView commitAnimations];
        }
    if (time == 35) {
        label.text = [NSString stringWithFormat:@""];
        mastertextbox.hidden = TRUE;
    }
        if (time ==  60 ) {
            time = 0;
            method = 8;
        }
        
    }
if(method == 8){
        if (time == 20) {
            blazetextbox.hidden = FALSE;
            vlable.text = [NSString stringWithFormat:@"H"];
        }
        if (time == 21) {
            vlable.text = [NSString stringWithFormat:@"Ha"];
        }
        if (time == 22) {
            vlable.text = [NSString stringWithFormat:@"Ha!"];
        }
        if (time == 23) {
            vlable.text = [NSString stringWithFormat:@"Ha! T"];
        }
        if (time == 24) {
            vlable.text = [NSString stringWithFormat:@"Ha! Th"];
        }
        if (time == 25) {
            vlable.text = [NSString stringWithFormat:@"Ha! Tha"];
        }
        if (time == 26) {
            vlable.text = [NSString stringWithFormat:@"Ha! That"];
        }
        if (time == 27) {
            vlable.text = [NSString stringWithFormat:@"Ha! That o"];
        }
        if (time == 28) {
            vlable.text = [NSString stringWithFormat:@"Ha! That ol"];
        }
        if (time == 29) {
            vlable.text = [NSString stringWithFormat:@"Ha! That old"];
        }
        if (time == 30) {
            vlable.text = [NSString stringWithFormat:@"Ha! That old m"];
        }
        if (time == 31) {
            vlable.text = [NSString stringWithFormat:@"Ha! That old ma"];
        }
        if (time == 32) {
            vlable.text = [NSString stringWithFormat:@"Ha! That old man"];
        }
        if (time == 33) {
            vlable.text = [NSString stringWithFormat:@"Ha! That old man d"];
        }
        if (time == 34) {
            vlable.text = [NSString stringWithFormat:@"Ha! That old man do"];
        }
        if (time == 35) {
            vlable.text = [NSString stringWithFormat:@"Ha! That old man does"];
        }
        if (time == 36) {
            vlable.text = [NSString stringWithFormat:@"Ha! That old man doesn'"];
        }
        if (time == 37) {
            vlable.text = [NSString stringWithFormat:@"Ha! That old man doesn't"];
        }
        if (time == 38) {
            vlable.text = [NSString stringWithFormat:@"Ha! That old man doesn't k"];
        }
        if (time == 39) {
            vlable.text = [NSString stringWithFormat:@"Ha! That old man doesn't kno"];
        }
        if (time == 40) {
            vlable.text = [NSString stringWithFormat:@"Ha! That old man doesn't know"];
        }
        if (time == 41) {
            vlable.text = [NSString stringWithFormat:@"Ha! That old man doesn't know w"];
        }
        if (time == 42) {
            vlable.text = [NSString stringWithFormat:@"Ha! That old man doesn't know wh"];
        }
        if (time == 43) {
            vlable.text = [NSString stringWithFormat:@"Ha! That old man doesn't know whe"];
        }
        if (time == 44) {
            vlable.text = [NSString stringWithFormat:@"Ha! That old man doesn't know when"];
        }
        if (time == 45) {
            vlable.text = [NSString stringWithFormat:@"Ha! That old man doesn't know when t"];
        }
        if (time == 46) {
            vlable.text = [NSString stringWithFormat:@"Ha! That old man doesn't know when to"];
        }
        if (time == 47) {
            vlable.text = [NSString stringWithFormat:@"Ha! That old man doesn't know when to s"];
        }
        if (time == 48) {
            vlable.text = [NSString stringWithFormat:@"Ha! That old man doesn't know when to st"];
        }
        if (time == 49) {
            vlable.text = [NSString stringWithFormat:@"Ha! That old man doesn't know when to sto"];
        }
        if (time == 50) {
            vlable.text = [NSString stringWithFormat:@"Ha! That old man doesn't know when to stop"];
        }
        if (time == 51) {
            vlable.text = [NSString stringWithFormat:@"Ha! That old man doesn't know when to stop."];
            time = 0;
            method = 9;
        }

    }
if(method == 9){
        if (time == 50) {
            vlable.text = [NSString stringWithFormat:@"S"];
        }
        if (time == 51) {
            vlable.text = [NSString stringWithFormat:@"So"];
        }
        if (time == 52) {
            vlable.text = [NSString stringWithFormat:@"So!"];
        }
        if (time == 53) {
            vlable.text = [NSString stringWithFormat:@"So! I"];
        }
        if (time == 54) {
            vlable.text = [NSString stringWithFormat:@"So! I h"];
        }
        if (time == 55) {
            vlable.text = [NSString stringWithFormat:@"So! I he"];
        }
        if (time == 56) {
            vlable.text = [NSString stringWithFormat:@"So! I hea"];
        }
        if (time == 57) {
            vlable.text = [NSString stringWithFormat:@"So! I hear"];
        }
        if (time == 58) {
            vlable.text = [NSString stringWithFormat:@"So! I hear y"];
        }
        if (time == 59) {
            vlable.text = [NSString stringWithFormat:@"So! I hear yo"];
        }
        if (time == 60) {
            vlable.text = [NSString stringWithFormat:@"So! I hear you"];
        }
        if (time == 61) {
            vlable.text = [NSString stringWithFormat:@"So! I hear you t"];
        }
        if (time == 62) {
            vlable.text = [NSString stringWithFormat:@"So! I hear you th"];
        }
        if (time == 63) {
            vlable.text = [NSString stringWithFormat:@"So! I hear you thi"];
        }
        if (time == 64) {
            vlable.text = [NSString stringWithFormat:@"So! I hear you thin"];
        }
        if (time == 65) {
            vlable.text = [NSString stringWithFormat:@"So! I hear you think"];
        }
        if (time == 66) {
            vlable.text = [NSString stringWithFormat:@"So! I hear you think y"];
        }
        if (time == 67) {
            vlable.text = [NSString stringWithFormat:@"So! I hear you think yo"];
        }
        if (time == 68) {
            vlable.text = [NSString stringWithFormat:@"So! I hear you think you"];
        }
        if (time == 69) {
            vlable.text = [NSString stringWithFormat:@"So! I hear you think you'"];
        }
        if (time == 70) {
            vlable.text = [NSString stringWithFormat:@"So! I hear you think you'r"];
        }
        if (time == 71) {
            vlable.text = [NSString stringWithFormat:@"So! I hear you think you're"];
        }
        if (time == 72) {
            vlable.text = [NSString stringWithFormat:@"So! I hear you think you're t"];
        }
        if (time == 73) {
            vlable.text = [NSString stringWithFormat:@"So! I hear you think you're th"];
        }
        if (time == 74) {
            vlable.text = [NSString stringWithFormat:@"So! I hear you think you're the "];
        }
        if (time == 75) {
            vlable.text = [NSString stringWithFormat:@"So! I hear you think you're the b"];
        }
        if (time == 76) {
            vlable.text = [NSString stringWithFormat:@"So! I hear you think you're the be"];
        }
        if (time == 77) {
            vlable.text = [NSString stringWithFormat:@"So! I hear you think you're the bes"];
        }
        if (time == 78) {
            vlable.text = [NSString stringWithFormat:@"So! I hear you think you're the best"];
        }
        if (time == 79) {
            vlable.text = [NSString stringWithFormat:@"So! I hear you think you're the best."];
            time = 0;
            method = 10;
        }


    }
if(method == 10){
        if (time == 60) {
            vlable.text = [NSString stringWithFormat:@"W"];
        }
        if (time == 61) {
            vlable.text = [NSString stringWithFormat:@"We"];
        }
        if (time == 62) {
            vlable.text = [NSString stringWithFormat:@"Wel"];
        }
        if (time == 63) {
            vlable.text = [NSString stringWithFormat:@"Well"];
        }
        if (time == 64) {
            vlable.text = [NSString stringWithFormat:@"Well l"];
        }
        if (time == 65) {
            vlable.text = [NSString stringWithFormat:@"Well le"];
        }
        if (time == 66) {
            vlable.text = [NSString stringWithFormat:@"Well let"];
        }
        if (time == 67) {
            vlable.text = [NSString stringWithFormat:@"Well let m"];
        }
        if (time == 68) {
            vlable.text = [NSString stringWithFormat:@"Well let me"];
        }
        if (time == 69) {
            vlable.text = [NSString stringWithFormat:@"Well let me t"];
        }
        if (time == 70) {
            vlable.text = [NSString stringWithFormat:@"Well let me te"];
        }
        if (time == 71) {
            vlable.text = [NSString stringWithFormat:@"Well let me tel"];
        }
        if (time == 72) {
            vlable.text = [NSString stringWithFormat:@"Well let me tell"];
        }
        if (time == 73) {
            vlable.text = [NSString stringWithFormat:@"Well let me tell y"];
        }
        if (time == 74) {
            vlable.text = [NSString stringWithFormat:@"Well let me tell yo"];
        }
        if (time == 75) {
            vlable.text = [NSString stringWithFormat:@"Well let me tell you"];
        }
        if (time == 76) {
            vlable.text = [NSString stringWithFormat:@"Well let me tell you p"];
        }
        if (time == 77) {
            vlable.text = [NSString stringWithFormat:@"Well let me tell you pa"];
        }
        if (time == 78) {
            vlable.text = [NSString stringWithFormat:@"Well let me tell you pal"];
        }
        if (time == 79) {
            vlable.text = [NSString stringWithFormat:@"Well let me tell you pal,"];
        }
        if (time == 80) {
            vlable.text = [NSString stringWithFormat:@"Well let me tell you pal, y"];
        }
        if (time == 81) {
            vlable.text = [NSString stringWithFormat:@"Well let me tell you pal, yo"];
        }
        if (time == 82) {
            vlable.text = [NSString stringWithFormat:@"Well let me tell you pal, you"];
        }
        if (time == 83) {
            vlable.text = [NSString stringWithFormat:@"Well let me tell you pal, you'"];
        }
        if (time == 84) {
            vlable.text = [NSString stringWithFormat:@"Well let me tell you pal, you'r"];
        }
        if (time == 85) {
            vlable.text = [NSString stringWithFormat:@"Well let me tell you pal, you're"];
        }
        if (time == 86) {
            vlable.text = [NSString stringWithFormat:@"Well let me tell you pal, you're m"];
        }
        if (time == 87) {
            vlable.text = [NSString stringWithFormat:@"Well let me tell you pal, you're mi"];
        }
        if (time == 88) {
            vlable.text = [NSString stringWithFormat:@"Well let me tell you pal, you're mis"];
        }
        if (time == 89) {
            vlable.text = [NSString stringWithFormat:@"Well let me tell you pal, you're mist"];
        }
        if (time == 90) {
            vlable.text = [NSString stringWithFormat:@"Well let me tell you pal, you're mista"];
        }
        if (time == 91) {
            vlable.text = [NSString stringWithFormat:@"Well let me tell you pal, you're mistak"];
        }
        if (time == 92) {
            vlable.text = [NSString stringWithFormat:@"Well let me tell you pal, you're mistake"];
        }
        if (time == 93) {
            vlable.text = [NSString stringWithFormat:@"Well let me tell you pal, you're mistaken"];
        }
        if (time == 94) {
            vlable.text = [NSString stringWithFormat:@"Well let me tell you pal, you're mistaken."];
            time = 0;
            method = 11;
        }        
    }
if(method == 11){
        if (time == 65) {
            vlable.text = [NSString stringWithFormat:@"M"];
        }
        if (time == 66) {
            vlable.text = [NSString stringWithFormat:@"My"];
        }
        if (time == 67) {
            vlable.text = [NSString stringWithFormat:@"My t"];
        }
        if (time == 68) {
            vlable.text = [NSString stringWithFormat:@"My tr"];
        }
        if (time == 69) {
            vlable.text = [NSString stringWithFormat:@"My tri"];
        }
        if (time == 70) {
            vlable.text = [NSString stringWithFormat:@"My tria"];
        }
        if (time == 71) {
            vlable.text = [NSString stringWithFormat:@"My trial"];
        }
        if (time == 72) {
            vlable.text = [NSString stringWithFormat:@"My trial t"];
        }
        if (time == 73) {
            vlable.text = [NSString stringWithFormat:@"My trial ti"];
        }
        if (time == 74) {
            vlable.text = [NSString stringWithFormat:@"My trial tim"];
        }
        if (time == 75) {
            vlable.text = [NSString stringWithFormat:@"My trial time"];
        }
        if (time == 76) {
            vlable.text = [NSString stringWithFormat:@"My trial times"];
        }
        if (time == 77) {
            vlable.text = [NSString stringWithFormat:@"My trial times a"];
        }
        if (time == 78) {
            vlable.text = [NSString stringWithFormat:@"My trial times ar"];
        }
        if (time == 79) {
            vlable.text = [NSString stringWithFormat:@"My trial times are"];
        }
        if (time == 80) {
            vlable.text = [NSString stringWithFormat:@"My trial times are b"];
        }
        if (time == 81) {
            vlable.text = [NSString stringWithFormat:@"My trial times are be"];
        }
        if (time == 82) {
            vlable.text = [NSString stringWithFormat:@"My trial times are bet"];
        }
        if (time == 83) {
            vlable.text = [NSString stringWithFormat:@"My trial times are bett"];
        }
        if (time == 84) {
            vlable.text = [NSString stringWithFormat:@"My trial times are bette"];
        }
        if (time == 85) {
            vlable.text = [NSString stringWithFormat:@"My trial times are better"];
        }
        if (time == 86) {
            vlable.text = [NSString stringWithFormat:@"My trial times are better t"];
        }
        if (time == 87) {
            vlable.text = [NSString stringWithFormat:@"My trial times are better th"];
        }
        if (time == 88) {
            vlable.text = [NSString stringWithFormat:@"My trial times are better tha"];
        }
        if (time == 89) {
            vlable.text = [NSString stringWithFormat:@"My trial times are better than"];
        }
        if (time == 90) {
            vlable.text = [NSString stringWithFormat:@"My trial times are better than a"];
        }
        if (time == 91) {
            vlable.text = [NSString stringWithFormat:@"My trial times are better than an"];
        }
        if (time == 92) {
            vlable.text = [NSString stringWithFormat:@"My trial times are better than any"];
        }
        if (time == 93) {
            vlable.text = [NSString stringWithFormat:@"My trial times are better than anyo"];
        }
        if (time == 94) {
            vlable.text = [NSString stringWithFormat:@"My trial times are better than anyon"];
        }
        if (time == 95) {
            vlable.text = [NSString stringWithFormat:@"My trial times are better than anyone"];
        }
        if (time == 96) {
            vlable.text = [NSString stringWithFormat:@"My trial times are better than anyone h"];
        }
        if (time == 97) {
            vlable.text = [NSString stringWithFormat:@"My trial times are better than anyone ha"];
        }
        if (time == 98) {
            vlable.text = [NSString stringWithFormat:@"My trial times are better than anyone has "];
        }
        if (time == 99) {
            vlable.text = [NSString stringWithFormat:@"My trial times are better than anyone has e"];
        }
        if (time == 100) {
            vlable.text = [NSString stringWithFormat:@"My trial times are better than anyone has ev"];
        }
        if (time == 101) {
            vlable.text = [NSString stringWithFormat:@"My trial times are better than anyone has eve"];
        }
        if (time == 102) {
            vlable.text = [NSString stringWithFormat:@"My trial times are better than anyone has ever"];
        }
        if (time == 103) {
            vlable.text = [NSString stringWithFormat:@"My trial times are better than anyone has ever s"];
        }
        if (time == 104) {
            vlable.text = [NSString stringWithFormat:@"My trial times are better than anyone has ever se"];
        }
        if (time == 105) {
            vlable.text = [NSString stringWithFormat:@"My trial times are better than anyone has ever see"];
        }
        if (time == 106) {
            vlable.text = [NSString stringWithFormat:@"My trial times are better than anyone has ever seen"];
        }
        if (time == 107) {
            vlable.text = [NSString stringWithFormat:@"My trial times are better than anyone has ever seen!"];
            time = 0;
            method = 12;
        }
    }
if(method == 12){
        if (time == 25) {
            vlable.text = [NSString stringWithFormat:@"B"];
        }
        if (time == 26) {
            vlable.text = [NSString stringWithFormat:@"Bu"];
        }
        if (time == 27) {
            vlable.text = [NSString stringWithFormat:@"But"];
        }
        if (time == 28) {
            vlable.text = [NSString stringWithFormat:@"But d"];
        }
        if (time == 29) {
            vlable.text = [NSString stringWithFormat:@"But do"];
        }
        if (time == 30) {
            vlable.text = [NSString stringWithFormat:@"But don"];
        }
        if (time == 31) {
            vlable.text = [NSString stringWithFormat:@"But don'"];
        }
        if (time == 32) {
            vlable.text = [NSString stringWithFormat:@"But don't"];
        }
        if (time == 33) {
            vlable.text = [NSString stringWithFormat:@"But don't l"];
        }
        if (time == 34) {
            vlable.text = [NSString stringWithFormat:@"But don't le"];
        }
        if (time == 35) {
            vlable.text = [NSString stringWithFormat:@"But don't let"];
        }
        if (time == 36) {
            vlable.text = [NSString stringWithFormat:@"But don't let t"];
        }
        if (time == 37) {
            vlable.text = [NSString stringWithFormat:@"But don't let th"];
        }
        if (time == 38) {
            vlable.text = [NSString stringWithFormat:@"But don't let tha"];
        }
        if (time == 39) {
            vlable.text = [NSString stringWithFormat:@"But don't let that"];
        }
        if (time == 40) {
            vlable.text = [NSString stringWithFormat:@"But don't let that s"];
        }
        if (time == 41) {
            vlable.text = [NSString stringWithFormat:@"But don't let that st"];
        }
        if (time == 42) {
            vlable.text = [NSString stringWithFormat:@"But don't let that sto"];
        }
        if (time == 43) {
            vlable.text = [NSString stringWithFormat:@"But don't let that stop"];
        }
        if (time == 44) {
            vlable.text = [NSString stringWithFormat:@"But don't let that stop y"];
        }
        if (time == 45) {
            vlable.text = [NSString stringWithFormat:@"But don't let that stop yo"];
        }
        if (time == 46) {
            vlable.text = [NSString stringWithFormat:@"But don't let that stop you!"];
        }
        if (time == 47) {
            vlable.text = [NSString stringWithFormat:@"But don't let that stop you f"];
        }
        if (time == 48) {
            vlable.text = [NSString stringWithFormat:@"But don't let that stop you fr"];
        }
        if (time == 49) {
            vlable.text = [NSString stringWithFormat:@"But don't let that stop you fro"];
        }
        if (time == 50) {
            vlable.text = [NSString stringWithFormat:@"But don't let that stop you from"];
        }
        if (time == 51) {
            vlable.text = [NSString stringWithFormat:@"But don't let that stop you from t"];
        }
        if (time == 52) {
            vlable.text = [NSString stringWithFormat:@"But don't let that stop you from tr"];
        }
        if (time == 53) {
            vlable.text = [NSString stringWithFormat:@"But don't let that stop you from try"];
        }
        if (time == 54) {
            vlable.text = [NSString stringWithFormat:@"But don't let that stop you from tryi"];
        }
        if (time == 55) {
            vlable.text = [NSString stringWithFormat:@"But don't let that stop you from tryin"];
        }
        if (time == 56) {
            vlable.text = [NSString stringWithFormat:@"But don't let that stop you from trying"];
        }
        if (time == 57) {
            vlable.text = [NSString stringWithFormat:@"But don't let that stop you from trying,"];
        }
    if (time == 58) {
        vlable.text = [NSString stringWithFormat:@"But don't let that stop you from trying, h"];
    }
    if (time == 59) {
        vlable.text = [NSString stringWithFormat:@"But don't let that stop you from trying, ha"];
    }
    if (time == 60) {
        vlable.text = [NSString stringWithFormat:@"But don't let that stop you from trying, hah"];
    }
    if (time == 61) {
        vlable.text = [NSString stringWithFormat:@"But don't let that stop you from trying, haha"];
    }
    if (time == 62) {
        vlable.text = [NSString stringWithFormat:@"But don't let that stop you from trying, haha."];
        time = 0;
        method = 13;
        }
    }
if(method == 13){
    if (time == 50) {
        label.text = [NSString stringWithFormat:@""];
        vlable.text = [NSString stringWithFormat:@""];
        blazetextbox.hidden = TRUE;
        [UIView beginAnimations:nil context:NULL];     
        [UIView setAnimationDuration:1.0];
        [UIView setAnimationRepeatCount:1];
        [UIView setAnimationRepeatAutoreverses:NO];
        [UIView setAnimationDelay:0];
        
        
        CGPoint position = CGPointMake(160.0f, 240.0f);
        position.y = 202.0f;
        position.x = 410.0f;
        blaze.center = position;
        [UIView commitAnimations];
    }
    if (time == 85) {
        
        [UIView beginAnimations:nil context:NULL];     
        [UIView setAnimationDuration:1.0];
        [UIView setAnimationRepeatCount:1];
        [UIView setAnimationRepeatAutoreverses:NO];
        [UIView setAnimationDelay:0];
        CGPoint position = CGPointMake(160.0f, 240.0f);
        position.y = 202.0f;
        position.x = 159.0f;
        master.center = position;
        [UIView commitAnimations];
        time = 0;
        method = 14;

        }
    }
if(method == 14){
        if (time == 20) {
            vlable.text = [NSString stringWithFormat:@""];
            mastertextbox.hidden = FALSE;
            label.text = [NSString stringWithFormat:@"T"];
        }  
        if (time == 21) {
            label.text = [NSString stringWithFormat:@"Th"];
        }
        if (time == 22) {
            label.text = [NSString stringWithFormat:@"Tha"];
        }
        if (time == 23) {
            label.text = [NSString stringWithFormat:@"That "];
        }
        if (time == 24) {
            label.text = [NSString stringWithFormat:@"That w"];
        }
        if (time == 25) {
            label.text = [NSString stringWithFormat:@"That wa"];
        }
        if (time == 26) {
            label.text = [NSString stringWithFormat:@"That was "];
        }
        if (time == 27) {
            label.text = [NSString stringWithFormat:@"That was B"];
        }
        if (time == 28) {
            label.text = [NSString stringWithFormat:@"That was Bl"];
        }
        if (time == 29) {
            label.text = [NSString stringWithFormat:@"That was Bla"];
        }
        if (time == 30) {
            label.text = [NSString stringWithFormat:@"That was Blaz"];
        }
        if (time == 31) {
            label.text = [NSString stringWithFormat:@"That was Blaze"];
        }
        if (time == 32) {
            label.text = [NSString stringWithFormat:@"That was Blaze."];
            method = 15;
            time = 0;
        }



    }
if(method == 15){
        if (time == 25) {
            label.text = [NSString stringWithFormat:@"H"];
        }
        if (time == 26) {
            label.text = [NSString stringWithFormat:@"He"];
        }
        if (time == 27) {
            label.text = [NSString stringWithFormat:@"He h"];
        }
        if (time == 28) {
            label.text = [NSString stringWithFormat:@"He ha"];
        }
        if (time == 29) {
            label.text = [NSString stringWithFormat:@"He has"];
        }
        if (time == 30) {
            label.text = [NSString stringWithFormat:@"He has b"];
        }
        if (time == 31) {
            label.text = [NSString stringWithFormat:@"He has be."];
        }
        if (time == 32) {
            label.text = [NSString stringWithFormat:@"He has bee"];
        }
        if (time == 33) {
            label.text = [NSString stringWithFormat:@"He has been"];
        }
        if (time == 34) {
            label.text = [NSString stringWithFormat:@"He has been b"];
        }
        if (time == 35) {
            label.text = [NSString stringWithFormat:@"He has been br"];
        }
        if (time == 36) {
            label.text = [NSString stringWithFormat:@"He has been bra"];
        }
        if (time == 37) {
            label.text = [NSString stringWithFormat:@"He has been brag"];
        }
        if (time == 38) {
            label.text = [NSString stringWithFormat:@"He has been bragg"];
        }
        if (time == 39) {
            label.text = [NSString stringWithFormat:@"He has been braggi"];
        }
        if (time == 40) {
            label.text = [NSString stringWithFormat:@"He has been braggin"];
        }
        if (time == 41) {
            label.text = [NSString stringWithFormat:@"He has been bragging "];
        }
        if (time == 42) {
            label.text = [NSString stringWithFormat:@"He has been bragging a"];
        }
        if (time == 43) {
            label.text = [NSString stringWithFormat:@"He has been bragging ab"];
        }
        if (time == 44) {
            label.text = [NSString stringWithFormat:@"He has been bragging abo"];
        }
        if (time == 45) {
            label.text = [NSString stringWithFormat:@"He has been bragging abou"];
        }
        if (time == 46) {
            label.text = [NSString stringWithFormat:@"He has been bragging about"];
        }
        if (time == 47) {
            label.text = [NSString stringWithFormat:@"He has been bragging about h"];
        }
        if (time == 48) {
            label.text = [NSString stringWithFormat:@"He has been bragging about hi"];
        }
        if (time == 49) {
            label.text = [NSString stringWithFormat:@"He has been bragging about his"];
        }
        if (time == 50) {
            label.text = [NSString stringWithFormat:@"He has been bragging about his t"];
        }
        if (time == 51) {
            label.text = [NSString stringWithFormat:@"He has been bragging about his ti"];
        }
        if (time == 52) {
            label.text = [NSString stringWithFormat:@"He has been bragging about his tim"];
        }
        if (time == 53) {
            label.text = [NSString stringWithFormat:@"He has been bragging about his time"];
        }
        if (time == 54) {
            label.text = [NSString stringWithFormat:@"He has been bragging about his time o"];
        }
        if (time == 55) {
            label.text = [NSString stringWithFormat:@"He has been bragging about his time on"];
        }
        if (time == 56) {
            label.text = [NSString stringWithFormat:@"He has been bragging about his time on t"];
        }
        if (time == 57) {
            label.text = [NSString stringWithFormat:@"He has been bragging about his time on th"];
        }
        if (time == 58) {
            label.text = [NSString stringWithFormat:@"He has been bragging about his time on the "];
        }
        if (time == 59) {
            label.text = [NSString stringWithFormat:@"He has been bragging about his time on the t"];
        }
        if (time == 60) {
            label.text = [NSString stringWithFormat:@"He has been bragging about his time on the tr"];
        }
        if (time == 61) {
            label.text = [NSString stringWithFormat:@"He has been bragging about his time on the tri"];
        }
        if (time == 62) {
            label.text = [NSString stringWithFormat:@"He has been bragging about his time on the tria"];
        }
        if (time == 63) {
            label.text = [NSString stringWithFormat:@"He has been bragging about his time on the trial"];
        }
        if (time == 64) {
            label.text = [NSString stringWithFormat:@"He has been bragging about his time on the trials"];
        }
        if (time == 65) {
            label.text = [NSString stringWithFormat:@"He has been bragging about his time on the trials t"];
        }
        if (time == 66) {
            label.text = [NSString stringWithFormat:@"He has been bragging about his time on the trials to "];
        }
        if (time == 67) {
            label.text = [NSString stringWithFormat:@"He has been bragging about his time on the trials to e"];
        }
        if (time == 68) {
            label.text = [NSString stringWithFormat:@"He has been bragging about his time on the trials to ev"];
        }
        if (time == 69) {
            label.text = [NSString stringWithFormat:@"He has been bragging about his time on the trials to eve"];
        }
        if (time == 70) {
            label.text = [NSString stringWithFormat:@"He has been bragging about his time on the trials to ever"];
        }
        if (time == 71) {
            label.text = [NSString stringWithFormat:@"He has been bragging about his time on the trials to every"];
        }
        if (time == 72) {
            label.text = [NSString stringWithFormat:@"He has been bragging about his time on the trials to everyo"];
        }
        if (time == 73) {
            label.text = [NSString stringWithFormat:@"He has been bragging about his time on the trials to everyon"];
        }
        if (time == 74) {
            label.text = [NSString stringWithFormat:@"He has been bragging about his time on the trials to everyone"];
        }
        if (time == 75) {
            label.text = [NSString stringWithFormat:@"He has been bragging about his time on the trials to everyone."];
            time = 0;
            method = 16;
        }
    }
if(method == 16){
        if (time == 50) {
            label.text = [NSString stringWithFormat:@"W"];
        }
        if (time == 51) {
            label.text = [NSString stringWithFormat:@"Wh"];
        }
        if (time == 52) {
            label.text = [NSString stringWithFormat:@"Wha"];
        }
        if (time == 53) {
            label.text = [NSString stringWithFormat:@"What"];
        }
        if (time == 54) {
            label.text = [NSString stringWithFormat:@"What a"];
        }
        if (time == 55) {
            label.text = [NSString stringWithFormat:@"What ar"];
        }
        if (time == 56) {
            label.text = [NSString stringWithFormat:@"What are"];
        }
        if (time == 57) {
            label.text = [NSString stringWithFormat:@"What are t"];
        }
        if (time == 58) {
            label.text = [NSString stringWithFormat:@"What are th"];
        }
        if (time == 59) {
            label.text = [NSString stringWithFormat:@"What are the"];
        }
        if (time == 60) {
            label.text = [NSString stringWithFormat:@"What are the t"];
        }
        if (time == 61) {
            label.text = [NSString stringWithFormat:@"What are the tr"];
        }
        if (time == 62) {
            label.text = [NSString stringWithFormat:@"What are the tri"];
        }
        if (time == 63) {
            label.text = [NSString stringWithFormat:@"What are the tria"];
        }
        if (time == 64) {
            label.text = [NSString stringWithFormat:@"What are the trial"];
        }
        if (time == 65) {
            label.text = [NSString stringWithFormat:@"What are the trials"];
        }
        if (time == 66) {
            label.text = [NSString stringWithFormat:@"What are the trials?"];
            time = 0;
            method = 17;
        }
    }
if(method == 17){
        if (time == 30) {
            label.text = [NSString stringWithFormat:@"T"];
        }
        if (time == 31) {
            label.text = [NSString stringWithFormat:@"Th"];
        }
        if (time == 32) {
            label.text = [NSString stringWithFormat:@"The"];
        }
        if (time == 33) {
            label.text = [NSString stringWithFormat:@"The t"];
        }
        if (time == 34) {
            label.text = [NSString stringWithFormat:@"The tr"];
        }
        if (time == 35) {
            label.text = [NSString stringWithFormat:@"The tri"];
        }
        if (time == 36) {
            label.text = [NSString stringWithFormat:@"The tria"];
        }
        if (time == 37) {
            label.text = [NSString stringWithFormat:@"The trial"];
        }
        if (time == 38) {
            label.text = [NSString stringWithFormat:@"The trials"];
        }
        if (time == 39) {
            label.text = [NSString stringWithFormat:@"The trials d"];
        }
        if (time == 40) {
            label.text = [NSString stringWithFormat:@"The trials de"];
        }
        if (time == 41) {
            label.text = [NSString stringWithFormat:@"The trials det"];
        }
        if (time == 42) {
            label.text = [NSString stringWithFormat:@"The trials dete"];
        }
        if (time == 43) {
            label.text = [NSString stringWithFormat:@"The trials deter"];
        }
        if (time == 44) {
            label.text = [NSString stringWithFormat:@"The trials determ"];
        }
        if (time == 45) {
            label.text = [NSString stringWithFormat:@"The trials determi"];
        }
        if (time == 46) {
            label.text = [NSString stringWithFormat:@"The trials determin"];
        }
        if (time == 47) {
            label.text = [NSString stringWithFormat:@"The trials determine"];
        }
        if (time == 48) {
            label.text = [NSString stringWithFormat:@"The trials determine w"];
        }
        if (time == 49) {
            label.text = [NSString stringWithFormat:@"The trials determine wh"];
        }
        if (time == 50) {
            label.text = [NSString stringWithFormat:@"The trials determine who"];
        }
        if (time == 51) {
            label.text = [NSString stringWithFormat:@"The trials determine who i"];
        }
        if (time == 52) {
            label.text = [NSString stringWithFormat:@"The trials determine who is"];
        }
        if (time == 53) {
            label.text = [NSString stringWithFormat:@"The trials determine who is t"];
        }
        if (time == 54) {
            label.text = [NSString stringWithFormat:@"The trials determine who is th"];
        }
        if (time == 55) {
            label.text = [NSString stringWithFormat:@"The trials determine who is the"];
        }
        if (time == 56) {
            label.text = [NSString stringWithFormat:@"The trials determine who is the b"];
        }
        if (time == 57) {
            label.text = [NSString stringWithFormat:@"The trials determine who is the be"];
        }
        if (time == 58) {
            label.text = [NSString stringWithFormat:@"The trials determine who is the bes"];
        }
        if (time == 59) {
            label.text = [NSString stringWithFormat:@"The trials determine who is the best"];
        }
        if (time == 60) {
            label.text = [NSString stringWithFormat:@"The trials determine who is the best,"];
        }
        if (time == 61) {
            label.text = [NSString stringWithFormat:@"The trials determine who is the best, w"];
        }
        if (time == 62) {
            label.text = [NSString stringWithFormat:@"The trials determine who is the best, wh"];
        }
        if (time == 63) {
            label.text = [NSString stringWithFormat:@"The trials determine who is the best, who"];
        }
        if (time == 64) {
            label.text = [NSString stringWithFormat:@"The trials determine who is the best, who i"];
        }
        if (time == 65) {
            label.text = [NSString stringWithFormat:@"The trials determine who is the best, who is"];
        }
        if (time == 66) {
            label.text = [NSString stringWithFormat:@"The trials determine who is the best, who is s"];
        }
        if (time == 67) {
            label.text = [NSString stringWithFormat:@"The trials determine who is the best, who is sk"];
        }
        if (time == 68) {
            label.text = [NSString stringWithFormat:@"The trials determine who is the best, who is ski"];
        }
        if (time == 69) {
            label.text = [NSString stringWithFormat:@"The trials determine who is the best, who is skil"];
        }
        if (time == 70) {
            label.text = [NSString stringWithFormat:@"The trials determine who is the best, who is skill"];
        }
        if (time == 71) {
            label.text = [NSString stringWithFormat:@"The trials determine who is the best, who is skille"];
        }
        if (time == 72) {
            label.text = [NSString stringWithFormat:@"The trials determine who is the best, who is skilled"];
        }
        if (time == 73) {
            label.text = [NSString stringWithFormat:@"The trials determine who is the best, who is skilled a"];
        }
        if (time == 74) {
            label.text = [NSString stringWithFormat:@"The trials determine who is the best, who is skilled an"];
        }
        if (time == 75) {
            label.text = [NSString stringWithFormat:@"The trials determine who is the best, who is skilled and"];
        }
        if (time == 76) {
            label.text = [NSString stringWithFormat:@"The trials determine who is the best, who is skilled and w"];
        }
        if (time == 77) {
            label.text = [NSString stringWithFormat:@"The trials determine who is the best, who is skilled and wh"];
        }
        if (time == 78) {
            label.text = [NSString stringWithFormat:@"The trials determine who is the best, who is skilled and who"];
        }
        if (time == 79) {
            label.text = [NSString stringWithFormat:@"The trials determine who is the best, who is skilled and who i"];
        }
        if (time == 80) {
            label.text = [NSString stringWithFormat:@"The trials determine who is the best, who is skilled and who is"];
        }
        if (time == 81) {
            label.text = [NSString stringWithFormat:@"The trials determine who is the best, who is skilled and who is t"];
        }
        if (time == 82) {
            label.text = [NSString stringWithFormat:@"The trials determine who is the best, who is skilled and who is th"];
        }
        if (time == 83) {
            label.text = [NSString stringWithFormat:@"The trials determine who is the best, who is skilled and who is the"];
        }
        if (time == 84) {
            label.text = [NSString stringWithFormat:@"The trials determine who is the best, who is skilled and who is the S"];
        }
        if (time == 85) {
            label.text = [NSString stringWithFormat:@"The trials determine who is the best, who is skilled and who is the Sl"];
        }
        if (time == 86) {
            label.text = [NSString stringWithFormat:@"The trials determine who is the best, who is skilled and who is the Sli"];
        }
        if (time == 87) {
            label.text = [NSString stringWithFormat:@"The trials determine who is the best, who is skilled and who is the Slid"];
        }
        if (time == 88) {
            label.text = [NSString stringWithFormat:@"The trials determine who is the best, who is skilled and who is the Slide"];
        }
        if (time == 89) {
            label.text = [NSString stringWithFormat:@"The trials determine who is the best, who is skilled and who is the Slide M"];
        }
        if (time == 90) {
            label.text = [NSString stringWithFormat:@"The trials determine who is the best, who is skilled and who is the Slide Ma"];
        }
        if (time == 91) {
            label.text = [NSString stringWithFormat:@"The trials determine who is the best, who is skilled and who is the Slide Mas"];
        }
        if (time == 92) {
            label.text = [NSString stringWithFormat:@"The trials determine who is the best, who is skilled and who is the Slide Mast"];
        }
        if (time == 93) {
            label.text = [NSString stringWithFormat:@"The trials determine who is the best, who is skilled and who is the Slide Maste"];
        }
        if (time == 94) {
            label.text = [NSString stringWithFormat:@"The trials determine who is the best, who is skilled and who is the Slide Master"];
        }
        if (time == 95) {
            label.text = [NSString stringWithFormat:@"The trials determine who is the best, who is skilled and who is the Slide Master."];
            method = 18;
            time = 0;
        }
    }
if(method == 18){
        if (time == 50) {
            label.text = [NSString stringWithFormat:@"H"];
        }
        if (time == 51) {
            label.text = [NSString stringWithFormat:@"Hi"];
        }
        if (time == 52) {
            label.text = [NSString stringWithFormat:@"His"];
        }
        if (time == 53) {
            label.text = [NSString stringWithFormat:@"His t"];
        }
        if (time == 54) {
            label.text = [NSString stringWithFormat:@"His ti"];
        }
        if (time == 55) {
            label.text = [NSString stringWithFormat:@"His tim"];
        }
        if (time == 56) {
            label.text = [NSString stringWithFormat:@"His time"];
        }
        if (time == 57) {
            label.text = [NSString stringWithFormat:@"His times a"];
        }
        if (time == 58) {
            label.text = [NSString stringWithFormat:@"His times ar"];
        }
        if (time == 59) {
            label.text = [NSString stringWithFormat:@"His times are"];
        }
        if (time == 60) {
            label.text = [NSString stringWithFormat:@"His times are v"];
        }
        if (time == 61) {
            label.text = [NSString stringWithFormat:@"His times are ve"];
        }
        if (time == 62) {
            label.text = [NSString stringWithFormat:@"His times are ver"];
        }
        if (time == 63) {
            label.text = [NSString stringWithFormat:@"His times are very"];
        }
        if (time == 64) {
            label.text = [NSString stringWithFormat:@"His times are very i"];
        }
        if (time == 65) {
            label.text = [NSString stringWithFormat:@"His times are very im"];
        }
        if (time == 66) {
            label.text = [NSString stringWithFormat:@"His times are very imp"];
        }
        if (time == 67) {
            label.text = [NSString stringWithFormat:@"His times are very impr"];
        }
        if (time == 68) {
            label.text = [NSString stringWithFormat:@"His times are very impre"];
        }
        if (time == 69) {
            label.text = [NSString stringWithFormat:@"His times are very impres"];
        }
        if (time == 70) {
            label.text = [NSString stringWithFormat:@"His times are very impress"];
        }
        if (time == 71) {
            label.text = [NSString stringWithFormat:@"His times are very impressi"];
        }
        if (time == 72) {
            label.text = [NSString stringWithFormat:@"His times are very impressiv"];
        }
        if (time == 73) {
            label.text = [NSString stringWithFormat:@"His times are very impressive"];
        }
        if (time == 74) {
            label.text = [NSString stringWithFormat:@"His times are very impressive a"];
        }
        if (time == 75) {
            label.text = [NSString stringWithFormat:@"His times are very impressive an"];
        }
        if (time == 76) {
            label.text = [NSString stringWithFormat:@"His times are very impressive and"];
        }
        if (time == 77) {
            label.text = [NSString stringWithFormat:@"His times are very impressive and I"];
        }
        if (time == 78) {
            label.text = [NSString stringWithFormat:@"His times are very impressive and I f"];
        }
        if (time == 79) {
            label.text = [NSString stringWithFormat:@"His times are very impressive and I fe"];
        }
        if (time == 80) {
            label.text = [NSString stringWithFormat:@"His times are very impressive and I fea"];
        }
        if (time == 81) {
            label.text = [NSString stringWithFormat:@"His times are very impressive and I fear"];
        }
        if (time == 82) {
            label.text = [NSString stringWithFormat:@"His times are very impressive and I fear h"];
        }
        if (time == 83) {
            label.text = [NSString stringWithFormat:@"His times are very impressive and I fear he"];
        }
        if (time == 84) {
            label.text = [NSString stringWithFormat:@"His times are very impressive and I fear he w"];
        }
        if (time == 85) {
            label.text = [NSString stringWithFormat:@"His times are very impressive and I fear he wi"];
        }
        if (time == 86) {
            label.text = [NSString stringWithFormat:@"His times are very impressive and I fear he wil"];
        }
        if (time == 87) {
            label.text = [NSString stringWithFormat:@"His times are very impressive and I fear he will"];
        }
        if (time == 88) {
            label.text = [NSString stringWithFormat:@"His times are very impressive and I fear he will g"];
        }
        if (time == 89) {
            label.text = [NSString stringWithFormat:@"His times are very impressive and I fear he will ga"];
        }
        if (time == 90) {
            label.text = [NSString stringWithFormat:@"His times are very impressive and I fear he will gai"];
        }
        if (time == 91) {
            label.text = [NSString stringWithFormat:@"His times are very impressive and I fear he will gain"];
        }
        if (time == 92) {
            label.text = [NSString stringWithFormat:@"His times are very impressive and I fear he will gain t"];
        }
        if (time == 93) {
            label.text = [NSString stringWithFormat:@"His times are very impressive and I fear he will gain th"];
        }
        if (time == 94) {
            label.text = [NSString stringWithFormat:@"His times are very impressive and I fear he will gain the"];
        }
        if (time == 95) {
            label.text = [NSString stringWithFormat:@"His times are very impressive and I fear he will gain the t"];
        }
        if (time == 96) {
            label.text = [NSString stringWithFormat:@"His times are very impressive and I fear he will gain the ti"];
        }
        if (time == 97) {
            label.text = [NSString stringWithFormat:@"His times are very impressive and I fear he will gain the tit"];
        }
        if (time == 98) {
            label.text = [NSString stringWithFormat:@"His times are very impressive and I fear he will gain the titl"];
        }
        if (time == 99) {
            label.text = [NSString stringWithFormat:@"His times are very impressive and I fear he will gain the title"];
        }
        if (time == 100) {
            label.text = [NSString stringWithFormat:@"His times are very impressive and I fear he will gain the title."];
            method = 19;
            time = 0;
        }




    }
if(method == 19){
        if (time == 30) {
            label.text = [NSString stringWithFormat:@"S"];
        }
        if (time == 31) {
            label.text = [NSString stringWithFormat:@"Sl"];
        }
        if (time == 32) {
            label.text = [NSString stringWithFormat:@"Sli"];
        }
        if (time == 33) {
            label.text = [NSString stringWithFormat:@"Slid"];
        }
        if (time == 34) {
            label.text = [NSString stringWithFormat:@"Slide"];
        }
        if (time == 35) {
            label.text = [NSString stringWithFormat:@"Slide M"];
        }
        if (time == 36) {
            label.text = [NSString stringWithFormat:@"Slide Ma"];
        }
        if (time == 37) {
            label.text = [NSString stringWithFormat:@"Slide Mas"];
        }
        if (time == 38) {
            label.text = [NSString stringWithFormat:@"Slide Mast"];
        }
        if (time == 39) {
            label.text = [NSString stringWithFormat:@"Slide Maste"];
        }
        if (time == 40) {
            label.text = [NSString stringWithFormat:@"Slide Master"];
        }
        if (time == 41) {
            label.text = [NSString stringWithFormat:@"Slide Master i"];
        }
        if (time == 42) {
            label.text = [NSString stringWithFormat:@"Slide Master is"];
        }
        if (time == 43) {
            label.text = [NSString stringWithFormat:@"Slide Master is t"];
        }
        if (time == 44) {
            label.text = [NSString stringWithFormat:@"Slide Master is th"];
        }
        if (time == 45) {
            label.text = [NSString stringWithFormat:@"Slide Master is the."];
        }
        if (time == 46) {
            label.text = [NSString stringWithFormat:@"Slide Master is the u"];
        }
        if (time == 47) {
            label.text = [NSString stringWithFormat:@"Slide Master is the ul"];
        }
        if (time == 48) {
            label.text = [NSString stringWithFormat:@"Slide Master is the ult"];
        }
        if (time == 49) {
            label.text = [NSString stringWithFormat:@"Slide Master is the ulti"];
        }
        if (time == 50) {
            label.text = [NSString stringWithFormat:@"Slide Master is the ultim"];
        }
        if (time == 51) {
            label.text = [NSString stringWithFormat:@"Slide Master is the ultima"];
        }
        if (time == 52) {
            label.text = [NSString stringWithFormat:@"Slide Master is the ultimat"];
        }
        if (time == 53) {
            label.text = [NSString stringWithFormat:@"Slide Master is the ultimate"];
        }
        if (time == 54) {
            label.text = [NSString stringWithFormat:@"Slide Master is the ultimate h."];
        }
        if (time == 55) {
            label.text = [NSString stringWithFormat:@"Slide Master is the ultimate ho"];
        }
        if (time == 56) {
            label.text = [NSString stringWithFormat:@"Slide Master is the ultimate hon."];
        }
        if (time == 57) {
            label.text = [NSString stringWithFormat:@"Slide Master is the ultimate hono"];
        }
        if (time == 58) {
            label.text = [NSString stringWithFormat:@"Slide Master is the ultimate honor"];
        }
        if (time == 59) {
            label.text = [NSString stringWithFormat:@"Slide Master is the ultimate honor a"];
        }
        if (time == 60) {
            label.text = [NSString stringWithFormat:@"Slide Master is the ultimate honor an"];
        }
        if (time == 61) {
            label.text = [NSString stringWithFormat:@"Slide Master is the ultimate honor and"];
        }
        if (time == 62) {
            label.text = [NSString stringWithFormat:@"Slide Master is the ultimate honor and r"];
        }
        if (time == 63) {
            label.text = [NSString stringWithFormat:@"Slide Master is the ultimate honor and re"];
        }
        if (time == 64) {
            label.text = [NSString stringWithFormat:@"Slide Master is the ultimate honor and res"];
        }
        if (time == 65) {
            label.text = [NSString stringWithFormat:@"Slide Master is the ultimate honor and resp"];
        }
        if (time == 66) {
            label.text = [NSString stringWithFormat:@"Slide Master is the ultimate honor and respo"];
        }
        if (time == 67) {
            label.text = [NSString stringWithFormat:@"Slide Master is the ultimate honor and respon"];
        }
        if (time == 68) {
            label.text = [NSString stringWithFormat:@"Slide Master is the ultimate honor and respons"];
        }
        if (time == 69) {
            label.text = [NSString stringWithFormat:@"Slide Master is the ultimate honor and responsi"];
        }
        if (time == 70) {
            label.text = [NSString stringWithFormat:@"Slide Master is the ultimate honor and responsib"];
        }
        if (time == 71) {
            label.text = [NSString stringWithFormat:@"Slide Master is the ultimate honor and responsibi"];
        }
        if (time == 72) {
            label.text = [NSString stringWithFormat:@"Slide Master is the ultimate honor and responsibil"];
        }
        if (time == 73) {
            label.text = [NSString stringWithFormat:@"Slide Master is the ultimate honor and responsibili"];
        }
        if (time == 74) {
            label.text = [NSString stringWithFormat:@"Slide Master is the ultimate honor and responsibilit"];
        }
        if (time == 75) {
            label.text = [NSString stringWithFormat:@"Slide Master is the ultimate honor and responsibility"];
        }
        if (time == 76) {
            label.text = [NSString stringWithFormat:@"Slide Master is the ultimate honor and responsibility."];
        }
        if (time == 106) {
            label.text = [NSString stringWithFormat:@"I"];
        }
        if (time == 107) {
            label.text = [NSString stringWithFormat:@"If"];
        }
        if (time == 108) {
            label.text = [NSString stringWithFormat:@"If B"];
        }
        if (time == 109) {
            label.text = [NSString stringWithFormat:@"If Bl"];
        }
        if (time == 110) {
            label.text = [NSString stringWithFormat:@"If Bla"];
        }
        if (time == 111) {
            label.text = [NSString stringWithFormat:@"If Blaz"];
        }
        if (time == 112) {
            label.text = [NSString stringWithFormat:@"If Blaze"];
        }
        if (time == 113) {
            label.text = [NSString stringWithFormat:@"If Blaze g"];
        }
        if (time == 114) {
            label.text = [NSString stringWithFormat:@"If Blaze ga"];
        }
        if (time == 115) {
            label.text = [NSString stringWithFormat:@"If Blaze gai"];
        }
        if (time == 116) {
            label.text = [NSString stringWithFormat:@"If Blaze gain"];
        }
        if (time == 117) {
            label.text = [NSString stringWithFormat:@"If Blaze gains"];
        }
        if (time == 118) {
            label.text = [NSString stringWithFormat:@"If Blaze gains t"];
        }
        if (time == 119) {
            label.text = [NSString stringWithFormat:@"If Blaze gains th"];
        }
        if (time == 120) {
            label.text = [NSString stringWithFormat:@"If Blaze gains tha"];
        }
        if (time == 121) {
            label.text = [NSString stringWithFormat:@"If Blaze gains that"];
        }
        if (time == 122) {
            label.text = [NSString stringWithFormat:@"If Blaze gains that."];
        }
        if (time == 123) {
            label.text = [NSString stringWithFormat:@"If Blaze gains that.."];
        }
        if (time == 124) {
            label.text = [NSString stringWithFormat:@"If Blaze gains that..."];
            method = 20;
            time =0;
        }
    }
if(method == 20){
        if (time == 35) {
            label.text = [NSString stringWithFormat:@"w"];
        }
        if (time == 36) {
            label.text = [NSString stringWithFormat:@"we"];
        }
        if (time == 37) {
            label.text = [NSString stringWithFormat:@"wel"];
        }
        if (time == 38) {
            label.text = [NSString stringWithFormat:@"well"];
        }
        if (time == 39) {
            label.text = [NSString stringWithFormat:@"well."];
        }
        if (time == 40) {
            label.text = [NSString stringWithFormat:@"well.."];
        }
        if (time == 41) {
            label.text = [NSString stringWithFormat:@"well..."];
        }
        if (time == 42) {
            label.text = [NSString stringWithFormat:@"well... t"];
        }
        if (time == 43) {
            label.text = [NSString stringWithFormat:@"well... th"];
        }
        if (time == 44) {
            label.text = [NSString stringWithFormat:@"well... the"];
        }
        if (time == 45) {
            label.text = [NSString stringWithFormat:@"well... ther"];
        }
        if (time == 46) {
            label.text = [NSString stringWithFormat:@"well... there"];
        }
        if (time == 47) {
            label.text = [NSString stringWithFormat:@"well... there w"];
        }
        if (time == 48) {
            label.text = [NSString stringWithFormat:@"well... there wi"];
        }
        if (time == 49) {
            label.text = [NSString stringWithFormat:@"well... there wil"];
        }
        if (time == 50) {
            label.text = [NSString stringWithFormat:@"well... there will"];
        }
        if (time == 51) {
            label.text = [NSString stringWithFormat:@"well... there will b"];
        }
        if (time == 52) {
            label.text = [NSString stringWithFormat:@"well... there will be"];
        }
        if (time == 53) {
            label.text = [NSString stringWithFormat:@"well... there will be c"];
        }
        if (time == 54) {
            label.text = [NSString stringWithFormat:@"well... there will be ch"];
        }
        if (time == 55) {
            label.text = [NSString stringWithFormat:@"well... there will be cha"];
        }
        if (time == 56) {
            label.text = [NSString stringWithFormat:@"well... there will be chao"];
        }
        if (time == 57) {
            label.text = [NSString stringWithFormat:@"well... there will be chaos"];
        }
        if (time == 58) {
            label.text = [NSString stringWithFormat:@"well... there will be chaos."];
            method = 21;
            time = 0;
        }
    }
if(method == 21){
        if (time == 35) {
            label.text = [NSString stringWithFormat:@"Y"];
        }
        if (time == 36) {
            label.text = [NSString stringWithFormat:@"Yo"];
        }
        if (time == 37) {
            label.text = [NSString stringWithFormat:@"You"];
        }
        if (time == 38) {
            label.text = [NSString stringWithFormat:@"You m"];
        }
        if (time == 39) {
            label.text = [NSString stringWithFormat:@"You mu"];
        }
        if (time == 40) {
            label.text = [NSString stringWithFormat:@"You mus"];
        }
        if (time == 41) {
            label.text = [NSString stringWithFormat:@"You must"];
        }
        if (time == 42) {
            label.text = [NSString stringWithFormat:@"You must b"];
        }
        if (time == 43) {
            label.text = [NSString stringWithFormat:@"You must be"];
        }
        if (time == 44) {
            label.text = [NSString stringWithFormat:@"You must bea"];
        }
        if (time == 45) {
            label.text = [NSString stringWithFormat:@"You must beat"];
        }
        if (time == 46) {
            label.text = [NSString stringWithFormat:@"You must beat h"];
        }
        if (time == 47) {
            label.text = [NSString stringWithFormat:@"You must beat hi"];
        }
        if (time == 48) {
            label.text = [NSString stringWithFormat:@"You must beat his"];
        }
        if (time == 49) {
            label.text = [NSString stringWithFormat:@"You must beat his t"];
        }
        if (time == 50) {
            label.text = [NSString stringWithFormat:@"You must beat his tr"];
        }
        if (time == 51) {
            label.text = [NSString stringWithFormat:@"You must beat his tri"];
        }
        if (time == 52) {
            label.text = [NSString stringWithFormat:@"You must beat his tria"];
        }
        if (time == 53) {
            label.text = [NSString stringWithFormat:@"You must beat his trial"];
        }
        if (time == 54) {
            label.text = [NSString stringWithFormat:@"You must beat his trial t"];
        }
        if (time == 55) {
            label.text = [NSString stringWithFormat:@"You must beat his trial ti"];
        }
        if (time == 56) {
            label.text = [NSString stringWithFormat:@"You must beat his trial tim"];
        }
        if (time == 57) {
            label.text = [NSString stringWithFormat:@"You must beat his trial time"];
        }
        if (time == 58) {
            label.text = [NSString stringWithFormat:@"You must beat his trial times"];
        }
        if (time == 59) {
            label.text = [NSString stringWithFormat:@"You must beat his trial times a"];
        }
        if (time == 60) {
            label.text = [NSString stringWithFormat:@"You must beat his trial times an"];
        }
        if (time == 61) {
            label.text = [NSString stringWithFormat:@"You must beat his trial times and"];
        }
        if (time == 62) {
            label.text = [NSString stringWithFormat:@"You must beat his trial times and p"];
        }
        if (time == 63) {
            label.text = [NSString stringWithFormat:@"You must beat his trial times and pr"];
        }
        if (time == 64) {
            label.text = [NSString stringWithFormat:@"You must beat his trial times and pro"];
        }
        if (time == 65) {
            label.text = [NSString stringWithFormat:@"You must beat his trial times and prov"];
        }
        if (time == 66) {
            label.text = [NSString stringWithFormat:@"You must beat his trial times and prove"];
        }
        if (time == 67) {
            label.text = [NSString stringWithFormat:@"You must beat his trial times and prove y"];
        }
        if (time == 68) {
            label.text = [NSString stringWithFormat:@"You must beat his trial times and prove yo"];
        }
        if (time == 69) {
            label.text = [NSString stringWithFormat:@"You must beat his trial times and prove you"];
        }
        if (time == 70) {
            label.text = [NSString stringWithFormat:@"You must beat his trial times and prove your"];
        }
        if (time == 71) {
            label.text = [NSString stringWithFormat:@"You must beat his trial times and prove yours"];
        }
        if (time == 72) {
            label.text = [NSString stringWithFormat:@"You must beat his trial times and prove yourse"];
        }
        if (time == 73) {
            label.text = [NSString stringWithFormat:@"You must beat his trial times and prove yoursel"];
        }
        if (time == 74) {
            label.text = [NSString stringWithFormat:@"You must beat his trial times and prove yourself"];
        }
        if (time == 75) {
            label.text = [NSString stringWithFormat:@"You must beat his trial times and prove yourself a"];
        }
        if (time == 77) {
            label.text = [NSString stringWithFormat:@"You must beat his trial times and prove yourself as"];
        }
        if (time == 78) {
            label.text = [NSString stringWithFormat:@"You must beat his trial times and prove yourself as t"];
        }
        if (time == 79) {
            label.text = [NSString stringWithFormat:@"You must beat his trial times and prove yourself as th"];
        }
        if (time == 80) {
            label.text = [NSString stringWithFormat:@"You must beat his trial times and prove yourself as the"];
        }
        if (time == 81) {
            label.text = [NSString stringWithFormat:@"You must beat his trial times and prove yourself as the r"];
        }
        if (time == 82) {
            label.text = [NSString stringWithFormat:@"You must beat his trial times and prove yourself as the re"];
        }
        if (time == 83) {
            label.text = [NSString stringWithFormat:@"You must beat his trial times and prove yourself as the rea"];
        }
        if (time == 84) {
            label.text = [NSString stringWithFormat:@"You must beat his trial times and prove yourself as the real"];
        }
        if (time == 85) {
            label.text = [NSString stringWithFormat:@"You must beat his trial times and prove yourself as the real S"];
        }
        if (time == 86) {
            label.text = [NSString stringWithFormat:@"You must beat his trial times and prove yourself as the real SL"];
        }
        if (time == 87) {
            label.text = [NSString stringWithFormat:@"You must beat his trial times and prove yourself as the real SLI"];
        }
        if (time == 88) {
            label.text = [NSString stringWithFormat:@"You must beat his trial times and prove yourself as the real SLID"];
        }
        if (time == 89) {
            label.text = [NSString stringWithFormat:@"You must beat his trial times and prove yourself as the real SLIDE"];
        }
        if (time == 90) {
            label.text = [NSString stringWithFormat:@"You must beat his trial times and prove yourself as the real SLIDE MA"];
        }
        if (time == 91) {
            label.text = [NSString stringWithFormat:@"You must beat his trial times and prove yourself as the real SLIDE MAS"];
        }
        if (time == 92) {
            label.text = [NSString stringWithFormat:@"You must beat his trial times and prove yourself as the real SLIDE MAST"];
        }
        if (time == 93) {
            label.text = [NSString stringWithFormat:@"You must beat his trial times and prove yourself as the real SLIDE MASTE"];
        }
        if (time == 94) {
            label.text = [NSString stringWithFormat:@"You must beat his trial times and prove yourself as the real SLIDE MASTER"];
        }
        if (time == 95) {
            label.text = [NSString stringWithFormat:@"You must beat his trial times and prove yourself as the real SLIDE MASTER!"];
            method = 22;
            time = 0;
        }
    }
if(method == 22){
        if (time == 55) {
            label.text = [NSString stringWithFormat:@"."];
        }
        if (time == 56) {
            label.text = [NSString stringWithFormat:@".."];
        }
        if (time == 57) {
            label.text = [NSString stringWithFormat:@"..."];
        }
        if (time == 58) {
            label.text = [NSString stringWithFormat:@"...S"];
        }
        if (time == 59) {
            label.text = [NSString stringWithFormat:@"...So"];
        }
        if (time == 60) {
            label.text = [NSString stringWithFormat:@"...So t"];
        }
        if (time == 61) {
            label.text = [NSString stringWithFormat:@"...So th"];
        }
        if (time == 62) {
            label.text = [NSString stringWithFormat:@"...So tha"];
        }
        if (time == 63) {
            label.text = [NSString stringWithFormat:@"...So that"];
        }
        if (time == 64) {
            label.text = [NSString stringWithFormat:@"...So that I"];
        }
        if (time == 65) {
            label.text = [NSString stringWithFormat:@"...So that I m"];
        }
        if (time == 66) {
            label.text = [NSString stringWithFormat:@"...So that I ma"];
        }
        if (time == 68) {
            label.text = [NSString stringWithFormat:@"...So that I may"];
        }
        if (time == 69) {
            label.text = [NSString stringWithFormat:@"...So that I may r"];
        }
        if (time == 70) {
            label.text = [NSString stringWithFormat:@"...So that I may re"];
        }
        if (time == 71) {
            label.text = [NSString stringWithFormat:@"...So that I may res"];
        }
        if (time == 72) {
            label.text = [NSString stringWithFormat:@"...So that I may rest"];
        }
        if (time == 73) {
            label.text = [NSString stringWithFormat:@"...So that I may rest i"];
        }
        if (time == 74) {
            label.text = [NSString stringWithFormat:@"...So that I may rest in"];
        }
        if (time == 75) {
            label.text = [NSString stringWithFormat:@"...So that I may rest in p"];
        }
        if (time == 76) {
            label.text = [NSString stringWithFormat:@"...So that I may rest in pe"];
        }
        if (time == 77) {
            label.text = [NSString stringWithFormat:@"...So that I may rest in pea"];
        }
        if (time == 78) {
            label.text = [NSString stringWithFormat:@"...So that I may rest in peac"];
        }
        if (time == 79) {
            label.text = [NSString stringWithFormat:@"...So that I may rest in peace"];
        }
        if (time == 80) {
            label.text = [NSString stringWithFormat:@"...So that I may rest in peace."];
        }
        if (time == 130) {
            [UIView beginAnimations:nil context:NULL];
            [UIView setAnimationDelegate:self];
            [UIView setAnimationDuration:4.0];
            [master setAlpha:0];
            [mastertextbox setAlpha:0];
            [background setAlpha:0];
            [label setAlpha:0];
            [UIView commitAnimations];

        }
    if (time == 220) {
        [timer invalidate];
        slidemastersAppDelegate *appDelegate = (slidemastersAppDelegate *)[[UIApplication sharedApplication] delegate];
        [appDelegate stopMusic];
        loadingtut *Sword = [[loadingtut alloc] initWithNibName:nil bundle:nil];
        [self presentModalViewController:Sword animated:NO];
    }
        
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
    
    if (canSound == 0 ) {
        slidemastersAppDelegate *appDelegate = (slidemastersAppDelegate *)[[UIApplication sharedApplication] delegate];
        [appDelegate qStoryMusic];
        
    }

    skip.hidden = TRUE;
    mastertextbox.hidden = TRUE;
    speechbubble.hidden = TRUE;
    blazetextbox.hidden = TRUE;
    
    time = 0;
    method = 0;
    timer = [NSTimer scheduledTimerWithTimeInterval:.05 target:self selector:@selector(counting) userInfo:nil repeats:YES];
 
    [UIView beginAnimations:nil context:NULL];     
    [UIView setAnimationDuration:1.0];
    [UIView setAnimationRepeatCount:1];
    [UIView setAnimationRepeatAutoreverses:NO];
    [UIView setAnimationDelay:.5];
    
    
    CGPoint position = CGPointMake(160.0f, 240.0f);
    position.y = 202.0f;
    position.x = 159.0f;
    master.center = position;
    [UIView commitAnimations];
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
