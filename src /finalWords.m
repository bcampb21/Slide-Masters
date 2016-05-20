//
//  finalWords.m
//  Slide Masters
//
//  Created by Blake Campbell on 6/4/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "finalWords.h"
#import "FinalStage.h"

@implementation finalWords

-(void) counting{
    count++;
    if (step == 1) {
        if (count == 1) {
            [UIView beginAnimations:nil context:NULL];     
            [UIView setAnimationDuration:1];
            [UIView setAnimationRepeatCount:1];
            [UIView setAnimationRepeatAutoreverses:NO];
            CGPoint position = CGPointMake(150.0f, 202.0f);
            slideMaster.center = position;
            [UIView commitAnimations];
        }
        if (count == 20) {
            slideMasterBox.hidden = FALSE;
            textLabel.text = [NSString stringWithFormat:@"Y"];
        }
        if (count == 21) {
            textLabel.text = [NSString stringWithFormat:@"Yo"];
        }
        if (count == 22) {
            textLabel.text = [NSString stringWithFormat:@"You"];
        }
        if (count == 23) {
            textLabel.text = [NSString stringWithFormat:@"You h"];
        }
        if (count == 24) {
            textLabel.text = [NSString stringWithFormat:@"You ha"];
        }
        if (count == 25) {
            textLabel.text = [NSString stringWithFormat:@"You hav"];
        }
        if (count == 26) {
            textLabel.text = [NSString stringWithFormat:@"You have"];
        }
        if (count == 27) {
            textLabel.text = [NSString stringWithFormat:@"You have d"];
        }
        if (count == 28) {
            textLabel.text = [NSString stringWithFormat:@"You have do"];
        }
        if (count == 29) {
            textLabel.text = [NSString stringWithFormat:@"You have don"];
        }
        if (count == 30) {
            textLabel.text = [NSString stringWithFormat:@"You have done"];
        }
        if (count == 31) {
            textLabel.text = [NSString stringWithFormat:@"You have done i"];
        }
        if (count == 32) {
            textLabel.text = [NSString stringWithFormat:@"You have done it"];
        }
        if (count == 33) {
            textLabel.text = [NSString stringWithFormat:@"You have done it!"];
        }
        if (count == 73) {
            step = 2;
            count = 0;
        }
        
    }
    if (step == 2) {
        if (count == 1) {
            textLabel.text = [NSString stringWithFormat:@"Y"];
        }
        if (count == 2) {
            textLabel.text = [NSString stringWithFormat:@"Yo"];
        }
        if (count == 3) {
            textLabel.text = [NSString stringWithFormat:@"You"];
        }
        if (count == 4) {
            textLabel.text = [NSString stringWithFormat:@"You t"];
        }
        if (count == 5) {
            textLabel.text = [NSString stringWithFormat:@"You tr"];
        }
        if (count == 6) {
            textLabel.text = [NSString stringWithFormat:@"You tru"];
        }
        if (count == 7) {
            textLabel.text = [NSString stringWithFormat:@"You trul"];
        }
        if (count == 8) {
            textLabel.text = [NSString stringWithFormat:@"You truly"];
        }
        if (count == 9) {
            textLabel.text = [NSString stringWithFormat:@"You truly a"];
        }
        if (count == 10) {
            textLabel.text = [NSString stringWithFormat:@"You truly ar"];
        }
        if (count == 11) {
            textLabel.text = [NSString stringWithFormat:@"You truly are"];
        }
        if (count == 12) {
            textLabel.text = [NSString stringWithFormat:@"You truly are w"];
        }
        if (count == 13) {
            textLabel.text = [NSString stringWithFormat:@"You truly are wo"];
        }
        if (count == 14) {
            textLabel.text = [NSString stringWithFormat:@"You truly are wor"];
        }
        if (count == 15) {
            textLabel.text = [NSString stringWithFormat:@"You truly are wort"];
        }
        if (count == 16) {
            textLabel.text = [NSString stringWithFormat:@"You truly are worth"];
        }
        if (count == 17) {
            textLabel.text = [NSString stringWithFormat:@"You truly are worthy"];
        }
        if (count == 18) {
            textLabel.text = [NSString stringWithFormat:@"You truly are worthy o"];
        }
        if (count == 19) {
            textLabel.text = [NSString stringWithFormat:@"You truly are worthy of"];
        }
        if (count == 20) {
            textLabel.text = [NSString stringWithFormat:@"You truly are worthy of b"];
        }
        if (count == 21) {
            textLabel.text = [NSString stringWithFormat:@"You truly are worthy of be"];
        }
        if (count == 22) {
            textLabel.text = [NSString stringWithFormat:@"You truly are worthy of bei"];
        }
        if (count == 23) {
            textLabel.text = [NSString stringWithFormat:@"You truly are worthy of bein"];
        }
        if (count == 24) {
            textLabel.text = [NSString stringWithFormat:@"You truly are worthy of being"];
        }
        if (count == 25) {
            textLabel.text = [NSString stringWithFormat:@"You truly are worthy of being t"];
        }
        if (count == 26) {
            textLabel.text = [NSString stringWithFormat:@"You truly are worthy of being th"];
        }
        if (count == 27) {
            textLabel.text = [NSString stringWithFormat:@"You truly are worthy of being the"];
        }
        if (count == 28) {
            textLabel.text = [NSString stringWithFormat:@"You truly are worthy of being the S"];
        }
        if (count == 29) {
            textLabel.text = [NSString stringWithFormat:@"You truly are worthy of being the Sl"];
        }
        if (count == 30) {
            textLabel.text = [NSString stringWithFormat:@"You truly are worthy of being the Sli"];
        }
        if (count == 31) {
            textLabel.text = [NSString stringWithFormat:@"You truly are worthy of being the Slid"];
        }
        if (count == 32) {
            textLabel.text = [NSString stringWithFormat:@"You truly are worthy of being the Slide"];
        }
        if (count == 33) {
            textLabel.text = [NSString stringWithFormat:@"You truly are worthy of being the Slide M"];
        }
        if (count == 34) {
            textLabel.text = [NSString stringWithFormat:@"You truly are worthy of being the Slide Ma"];
        }
        if (count == 35) {
            textLabel.text = [NSString stringWithFormat:@"You truly are worthy of being the Slide Mas"];
        }
        if (count == 36) {
            textLabel.text = [NSString stringWithFormat:@"You truly are worthy of being the Slide Mast"];
        }
        if (count == 37) {
            textLabel.text = [NSString stringWithFormat:@"You truly are worthy of being the Slide Maste"];
        }
        if (count == 38) {
            textLabel.text = [NSString stringWithFormat:@"You truly are worthy of being the Slide Master"];
        }
        if (count == 39) {
            textLabel.text = [NSString stringWithFormat:@"You truly are worthy of being the Slide Master!"];
        }
        if (count == 79) {
            step = 3;
            count = 0;
        }


    }
    if (step == 3) {
        if (count == 1) {
            textLabel.text = [NSString stringWithFormat:@"I"];
        }
        if (count == 2) {
            textLabel.text = [NSString stringWithFormat:@"I a"];
        }
        if (count == 3) {
            textLabel.text = [NSString stringWithFormat:@"I am "];
        }
        if (count == 4) {
            textLabel.text = [NSString stringWithFormat:@"I am v"];
        }
        if (count == 5) {
            textLabel.text = [NSString stringWithFormat:@"I am ve"];
        }
        if (count == 6) {
            textLabel.text = [NSString stringWithFormat:@"I am ver"];
        }
        if (count == 7) {
            textLabel.text = [NSString stringWithFormat:@"I am very"];
        }
        if (count == 8) {
            textLabel.text = [NSString stringWithFormat:@"I am very p"];
        }
        if (count == 9) {
            textLabel.text = [NSString stringWithFormat:@"I am very pr"];
        }
        if (count == 10) {
            textLabel.text = [NSString stringWithFormat:@"I am very pro"];
        }
        if (count == 11) {
            textLabel.text = [NSString stringWithFormat:@"I am very prou"];
        }
        if (count == 12) {
            textLabel.text = [NSString stringWithFormat:@"I am very proud"];
        }
        if (count == 13) {
            textLabel.text = [NSString stringWithFormat:@"I am very proud o"];
        }
        if (count == 14) {
            textLabel.text = [NSString stringWithFormat:@"I am very proud of"];
        }
        if (count == 15) {
            textLabel.text = [NSString stringWithFormat:@"I am very proud of y"];
        }
        if (count == 16) {
            textLabel.text = [NSString stringWithFormat:@"I am very proud of yo"];
        }
        if (count == 17) {
            textLabel.text = [NSString stringWithFormat:@"I am very proud of you"];
        }
        if (count == 18) {
            textLabel.text = [NSString stringWithFormat:@"I am very proud of you."];
        }
        if (count == 58) {
            step = 4;
            count = 0;
        }
    } 
    if (step == 4) {
        if (count == 1) {
            textLabel.text = [NSString stringWithFormat:@"H"];
        }
        if (count == 2) {
            textLabel.text = [NSString stringWithFormat:@"He"];
        }
        if (count == 3) {
            textLabel.text = [NSString stringWithFormat:@"Her"];
        }
        if (count == 4) {
            textLabel.text = [NSString stringWithFormat:@"Here"];
        }
        if (count == 5) {
            textLabel.text = [NSString stringWithFormat:@"Here co"];
        }
        if (count == 6) {
            textLabel.text = [NSString stringWithFormat:@"Here com"];
        }
        if (count == 7) {
            textLabel.text = [NSString stringWithFormat:@"Here come"];
        }
        if (count == 8) {
            textLabel.text = [NSString stringWithFormat:@"Here comes"];
        }
        if (count == 9) {
            textLabel.text = [NSString stringWithFormat:@"Here comes B"];
        }
        if (count == 10) {
            textLabel.text = [NSString stringWithFormat:@"Here comes Bl"];
        }
        if (count == 11) {
            textLabel.text = [NSString stringWithFormat:@"Here comes Bla"];
        }
        if (count == 12) {
            textLabel.text = [NSString stringWithFormat:@"Here comes Blaz"];
        }
        if (count == 13) {
            textLabel.text = [NSString stringWithFormat:@"Here comes Blaze"];
        }
        if (count == 14) {
            textLabel.text = [NSString stringWithFormat:@"Here comes Blaze."];
        }
        if (count == 15) {
            textLabel.text = [NSString stringWithFormat:@"Here comes Blaze.."];
        }
        if (count == 16) {
            textLabel.text = [NSString stringWithFormat:@"Here comes Blaze..."];
        }
        if (count == 56) {
            step = 5;
            count = 0;
        }

    }
    if (step == 5) {
        if (count == 1) {
            slideMasterBox.hidden = TRUE;
            textLabel.text = [NSString stringWithFormat:@""];
            [UIView beginAnimations:nil context:NULL];     
            [UIView setAnimationDuration:1];
            [UIView setAnimationRepeatCount:1];
            [UIView setAnimationRepeatAutoreverses:NO];
            CGPoint position = CGPointMake(-117.0f, 202.0f);
            slideMaster.center = position;
            [UIView commitAnimations];
        }
        if (count == 21) {
            [UIView beginAnimations:nil context:NULL];     
            [UIView setAnimationDuration:1];
            [UIView setAnimationRepeatCount:1];
            [UIView setAnimationRepeatAutoreverses:NO];
            CGPoint position = CGPointMake(160.0f, 202.0f);
            blaze.center = position;
            [UIView commitAnimations];
        }
        if (count == 51) {
            blazeBox.hidden = FALSE;
            step = 6;
            count = 0;
        }

    }
    if (step == 6) {
        if (count == 1) {
            textLabel.textColor = [UIColor whiteColor];
            textLabel.text = [NSString stringWithFormat:@"H"];
        }
        if (count == 2) {
            textLabel.text = [NSString stringWithFormat:@"Ho"];
        }
        if (count == 3) {
            textLabel.text = [NSString stringWithFormat:@"How"];
        }
        if (count == 4) {
            textLabel.text = [NSString stringWithFormat:@"How d"];
        }
        if (count == 5) {
            textLabel.text = [NSString stringWithFormat:@"How di"];
        }
        if (count == 6) {
            textLabel.text = [NSString stringWithFormat:@"How did"];
        }
        if (count == 7) {
            textLabel.text = [NSString stringWithFormat:@"How did y"];
        }
        if (count == 8) {
            textLabel.text = [NSString stringWithFormat:@"How did yo"];
        }
        if (count == 9) {
            textLabel.text = [NSString stringWithFormat:@"How did you"];
        }
        if (count == 10) {
            textLabel.text = [NSString stringWithFormat:@"How did you d"];
        }
        if (count == 11) {
            textLabel.text = [NSString stringWithFormat:@"How did you do"];
        }
        if (count == 12) {
            textLabel.text = [NSString stringWithFormat:@"How did you do i"];
        }
        if (count == 13) {
            textLabel.text = [NSString stringWithFormat:@"How did you do it"];
        }
        if (count == 14) {
            textLabel.text = [NSString stringWithFormat:@"How did you do it?"];
        }
        if (count == 15) {
            textLabel.text = [NSString stringWithFormat:@"How did you do it?!"];
        }
        if (count == 55) {
            step = 7;
            count = 0;
        }

    }
    if (step == 7) {
        if (count == 1) {
            textLabel.text = [NSString stringWithFormat:@"N"];
        }
        if (count == 2) {
            textLabel.text = [NSString stringWithFormat:@"No"];
        }
        if (count == 3) {
            textLabel.text = [NSString stringWithFormat:@"Not"];
        }
        if (count == 4) {
            textLabel.text = [NSString stringWithFormat:@"Not e"];
        }
        if (count == 5) {
            textLabel.text = [NSString stringWithFormat:@"Not ev"];
        }
        if (count == 6) {
            textLabel.text = [NSString stringWithFormat:@"Not eve"];
        }
        if (count == 7) {
            textLabel.text = [NSString stringWithFormat:@"Not even"];
        }
        if (count == 8) {
            textLabel.text = [NSString stringWithFormat:@"Not even I"];
        }
        if (count == 9) {
            textLabel.text = [NSString stringWithFormat:@"Not even I c"];
        }
        if (count == 10) {
            textLabel.text = [NSString stringWithFormat:@"Not even I co"];
        }
        if (count == 11) {
            textLabel.text = [NSString stringWithFormat:@"Not even I cou"];
        }
        if (count == 12) {
            textLabel.text = [NSString stringWithFormat:@"Not even I coul"];
        }
        if (count == 13) {
            textLabel.text = [NSString stringWithFormat:@"Not even I could"];
        }
        if (count == 14) {
            textLabel.text = [NSString stringWithFormat:@"Not even I could b"];
        }
        if (count == 15) {
            textLabel.text = [NSString stringWithFormat:@"Not even I could be"];
        }
        if (count == 16) {
            textLabel.text = [NSString stringWithFormat:@"Not even I could bea"];
        }
        if (count == 17) {
            textLabel.text = [NSString stringWithFormat:@"Not even I could beat"];
        }
        if (count == 18) {
            textLabel.text = [NSString stringWithFormat:@"Not even I could beat t"];
        }
        if (count == 19) {
            textLabel.text = [NSString stringWithFormat:@"Not even I could beat th"];
        }
        if (count == 20) {
            textLabel.text = [NSString stringWithFormat:@"Not even I could beat the"];
        }
        if (count == 21) {
            textLabel.text = [NSString stringWithFormat:@"Not even I could beat the f"];
        }
        if (count == 22) {
            textLabel.text = [NSString stringWithFormat:@"Not even I could beat the fi"];
        }
        if (count == 23) {
            textLabel.text = [NSString stringWithFormat:@"Not even I could beat the fin"];
        }
        if (count == 24) {
            textLabel.text = [NSString stringWithFormat:@"Not even I could beat the fina"];
        }
        if (count == 25) {
            textLabel.text = [NSString stringWithFormat:@"Not even I could beat the final"];
        }
        if (count == 26) {
            textLabel.text = [NSString stringWithFormat:@"Not even I could beat the final c"];
        }
        if (count == 27) {
            textLabel.text = [NSString stringWithFormat:@"Not even I could beat the final ch"];
        }
        if (count == 28) {
            textLabel.text = [NSString stringWithFormat:@"Not even I could beat the final cha"];
        }
        if (count == 29) {
            textLabel.text = [NSString stringWithFormat:@"Not even I could beat the final chal"];
        }
        if (count == 30) {
            textLabel.text = [NSString stringWithFormat:@"Not even I could beat the final chall"];
        }
        if (count == 31) {
            textLabel.text = [NSString stringWithFormat:@"Not even I could beat the final challe"];
        }
        if (count == 32) {
            textLabel.text = [NSString stringWithFormat:@"Not even I could beat the final challen"];
        }
        if (count == 33) {
            textLabel.text = [NSString stringWithFormat:@"Not even I could beat the final challeng"];
        }
        if (count == 34) {
            textLabel.text = [NSString stringWithFormat:@"Not even I could beat the final challenge"];
        }
        if (count == 35) {
            textLabel.text = [NSString stringWithFormat:@"Not even I could beat the final challenge."];
        }
        if (count == 75) {
            step = 8;
            count = 0;
        }
        
    }
    if (step == 8) {
        if (count == 1) {
            textLabel.text = [NSString stringWithFormat:@"I"];
        }
        if (count == 2) {
            textLabel.text = [NSString stringWithFormat:@"I b"];
        }
        if (count == 3) {
            textLabel.text = [NSString stringWithFormat:@"I be"];
        }
        if (count == 4) {
            textLabel.text = [NSString stringWithFormat:@"I bet"];
        }
        if (count == 5) {
            textLabel.text = [NSString stringWithFormat:@"I bet y"];
        }
        if (count == 6) {
            textLabel.text = [NSString stringWithFormat:@"I bet yo"];
        }
        if (count == 7) {
            textLabel.text = [NSString stringWithFormat:@"I bet you"];
        }
        if (count == 8) {
            textLabel.text = [NSString stringWithFormat:@"I bet you t"];
        }
        if (count == 9) {
            textLabel.text = [NSString stringWithFormat:@"I bet you th"];
        }
        if (count == 10) {
            textLabel.text = [NSString stringWithFormat:@"I bet you thi"];
        }
        if (count == 11) {
            textLabel.text = [NSString stringWithFormat:@"I bet you thin"];
        }
        if (count == 12) {
            textLabel.text = [NSString stringWithFormat:@"I bet you think"];
        }
        if (count == 13) {
            textLabel.text = [NSString stringWithFormat:@"I bet you think I"];
        }
        if (count == 14) {
            textLabel.text = [NSString stringWithFormat:@"I bet you think I'm"];
        }
        if (count == 15) {
            textLabel.text = [NSString stringWithFormat:@"I bet you think I'm j"];
        }
        if (count == 16) {
            textLabel.text = [NSString stringWithFormat:@"I bet you think I'm ju"];
        }
        if (count == 17) {
            textLabel.text = [NSString stringWithFormat:@"I bet you think I'm jus"];
        }
        if (count == 18) {
            textLabel.text = [NSString stringWithFormat:@"I bet you think I'm just"];
        }
        if (count == 19) {
            textLabel.text = [NSString stringWithFormat:@"I bet you think I'm just g"];
        }
        if (count == 20) {
            textLabel.text = [NSString stringWithFormat:@"I bet you think I'm just go"];
        }
        if (count == 21) {
            textLabel.text = [NSString stringWithFormat:@"I bet you think I'm just goi"];
        }
        if (count == 22) {
            textLabel.text = [NSString stringWithFormat:@"I bet you think I'm just goin"];
        }
        if (count == 23) {
            textLabel.text = [NSString stringWithFormat:@"I bet you think I'm just going"];
        }
        if (count == 24) {
            textLabel.text = [NSString stringWithFormat:@"I bet you think I'm just going t"];
        }
        if (count == 25) {
            textLabel.text = [NSString stringWithFormat:@"I bet you think I'm just going to"];
        }
        if (count == 26) {
            textLabel.text = [NSString stringWithFormat:@"I bet you think I'm just going to g"];
        }
        if (count == 27) {
            textLabel.text = [NSString stringWithFormat:@"I bet you think I'm just going to gi"];
        }
        if (count == 28) {
            textLabel.text = [NSString stringWithFormat:@"I bet you think I'm just going to giv"];
        }
        if (count == 29) {
            textLabel.text = [NSString stringWithFormat:@"I bet you think I'm just going to give"];
        }
        if (count == 30) {
            textLabel.text = [NSString stringWithFormat:@"I bet you think I'm just going to give u"];
        }
        if (count == 31) {
            textLabel.text = [NSString stringWithFormat:@"I bet you think I'm just going to give up"];
        }
        if (count == 32) {
            textLabel.text = [NSString stringWithFormat:@"I bet you think I'm just going to give up."];
        }
        if (count == 72) {
            step = 9;
            count = 0;
        }


    }
    if (step == 9) {
        if (count == 1) {
            textLabel.text = [NSString stringWithFormat:@"W"];
        }
        if (count == 2) {
            textLabel.text = [NSString stringWithFormat:@"We"];
        }
        if (count == 3) {
            textLabel.text = [NSString stringWithFormat:@"Wel"];
        }
        if (count == 4) {
            textLabel.text = [NSString stringWithFormat:@"Well"];
        }
        if (count == 5) {
            textLabel.text = [NSString stringWithFormat:@"Well l"];
        }
        if (count == 6) {
            textLabel.text = [NSString stringWithFormat:@"Well le"];
        }
        if (count == 7) {
            textLabel.text = [NSString stringWithFormat:@"Well let"];
        }
        if (count == 8) {
            textLabel.text = [NSString stringWithFormat:@"Well let m"];
        }
        if (count == 9) {
            textLabel.text = [NSString stringWithFormat:@"Well let me"];
        }
        if (count == 10) {
            textLabel.text = [NSString stringWithFormat:@"Well let me t"];
        }
        if (count == 11) {
            textLabel.text = [NSString stringWithFormat:@"Well let me te"];
        }
        if (count == 12) {
            textLabel.text = [NSString stringWithFormat:@"Well let me tel"];
        }
        if (count == 13) {
            textLabel.text = [NSString stringWithFormat:@"Well let me tell"];
        }
        if (count == 14) {
            textLabel.text = [NSString stringWithFormat:@"Well let me tell y"];
        }
        if (count == 15) {
            textLabel.text = [NSString stringWithFormat:@"Well let me tell yo"];
        }
        if (count == 16) {
            textLabel.text = [NSString stringWithFormat:@"Well let me tell you"];
        }
        if (count == 17) {
            textLabel.text = [NSString stringWithFormat:@"Well let me tell you p"];
        }
        if (count == 18) {
            textLabel.text = [NSString stringWithFormat:@"Well let me tell you pa"];
        }
        if (count == 19) {
            textLabel.text = [NSString stringWithFormat:@"Well let me tell you pal"];
        }
        if (count == 20) {
            textLabel.text = [NSString stringWithFormat:@"Well let me tell you pal,"];
        }
        if (count == 21) {
            textLabel.text = [NSString stringWithFormat:@"Well let me tell you pal, y"];
        }
        if (count == 22) {
            textLabel.text = [NSString stringWithFormat:@"Well let me tell you pal, yo"];
        }
        if (count == 23) {
            textLabel.text = [NSString stringWithFormat:@"Well let me tell you pal, you"];
        }
        if (count == 24) {
            textLabel.text = [NSString stringWithFormat:@"Well let me tell you pal, you'r"];
        }
        if (count == 25) {
            textLabel.text = [NSString stringWithFormat:@"Well let me tell you pal, you're"];
        }
        if (count == 26) {
            textLabel.text = [NSString stringWithFormat:@"Well let me tell you pal, you're m"];
        }
        if (count == 27) {
            textLabel.text = [NSString stringWithFormat:@"Well let me tell you pal, you're mi"];
        }
        if (count == 28) {
            textLabel.text = [NSString stringWithFormat:@"Well let me tell you pal, you're mis"];
        }
        if (count == 29) {
            textLabel.text = [NSString stringWithFormat:@"Well let me tell you pal, you're mist"];
        }
        if (count == 30) {
            textLabel.text = [NSString stringWithFormat:@"Well let me tell you pal, you're mista"];
        }
        if (count == 31) {
            textLabel.text = [NSString stringWithFormat:@"Well let me tell you pal, you're mistak"];
        }
        if (count == 32) {
            textLabel.text = [NSString stringWithFormat:@"Well let me tell you pal, you're mistake"];
        }
        if (count == 33) {
            textLabel.text = [NSString stringWithFormat:@"Well let me tell you pal, you're mistaken"];
        }
        if (count == 34) {
            textLabel.text = [NSString stringWithFormat:@"Well let me tell you pal, you're mistaken."];
        }
        if (count == 74) {
            step = 10;
            count = 0;
        }
     

    }
    if (step == 10) {
        if (count == 1) {
            textLabel.text = [NSString stringWithFormat:@"I"];
        }
        if (count == 2) {
            textLabel.text = [NSString stringWithFormat:@"I'm"];
        }
        if (count == 3) {
            textLabel.text = [NSString stringWithFormat:@"I'm g"];
        }
        if (count == 4) {
            textLabel.text = [NSString stringWithFormat:@"I'm go"];
        }
        if (count == 5) {
            textLabel.text = [NSString stringWithFormat:@"I'm goi"];
        }
        if (count == 6) {
            textLabel.text = [NSString stringWithFormat:@"I'm goin"];
        }
        if (count == 7) {
            textLabel.text = [NSString stringWithFormat:@"I'm going"];
        }
        if (count == 8) {
            textLabel.text = [NSString stringWithFormat:@"I'm going t"];
        }
        if (count == 9) {
            textLabel.text = [NSString stringWithFormat:@"I'm going to"];
        }
        if (count == 10) {
            textLabel.text = [NSString stringWithFormat:@"I'm going to g"];
        }
        if (count == 11) {
            textLabel.text = [NSString stringWithFormat:@"I'm going to go"];
        }
        if (count == 12) {
            textLabel.text = [NSString stringWithFormat:@"I'm going to go t"];
        }
        if (count == 13) {
            textLabel.text = [NSString stringWithFormat:@"I'm going to go tr"];
        }
        if (count == 14) {
            textLabel.text = [NSString stringWithFormat:@"I'm going to go tra"];
        }
        if (count == 15) {
            textLabel.text = [NSString stringWithFormat:@"I'm going to go trai"];
        }
        if (count == 16) {
            textLabel.text = [NSString stringWithFormat:@"I'm going to go train"];
        }
        if (count == 17) {
            textLabel.text = [NSString stringWithFormat:@"I'm going to go train s"];
        }
        if (count == 18) {
            textLabel.text = [NSString stringWithFormat:@"I'm going to go train so"];
        }
        if (count == 19) {
            textLabel.text = [NSString stringWithFormat:@"I'm going to go train som"];
        }
        if (count == 20) {
            textLabel.text = [NSString stringWithFormat:@"I'm going to go train some"];
        }
        if (count == 20) {
            textLabel.text = [NSString stringWithFormat:@"I'm going to go train some m"];
        }
        if (count == 21) {
            textLabel.text = [NSString stringWithFormat:@"I'm going to go train some mo"];
        }
        if (count == 22) {
            textLabel.text = [NSString stringWithFormat:@"I'm going to go train some mor"];
        }
        if (count == 23) {
            textLabel.text = [NSString stringWithFormat:@"I'm going to go train some more"];
        }
        if (count == 24) {
            textLabel.text = [NSString stringWithFormat:@"I'm going to go train some more, s"];
        }
        if (count == 25) {
            textLabel.text = [NSString stringWithFormat:@"I'm going to go train some more, so"];
        }
        if (count == 26) {
            textLabel.text = [NSString stringWithFormat:@"I'm going to go train some more, so w"];
        }
        if (count == 27) {
            textLabel.text = [NSString stringWithFormat:@"I'm going to go train some more, so wa"];
        }
        if (count == 28) {
            textLabel.text = [NSString stringWithFormat:@"I'm going to go train some more, so wat"];
        }
        if (count == 29) {
            textLabel.text = [NSString stringWithFormat:@"I'm going to go train some more, so watc"];
        }
        if (count == 30) {
            textLabel.text = [NSString stringWithFormat:@"I'm going to go train some more, so watch"];
        }
        if (count == 31) {
            textLabel.text = [NSString stringWithFormat:@"I'm going to go train some more, so watch y"];
        }
        if (count == 32) {
            textLabel.text = [NSString stringWithFormat:@"I'm going to go train some more, so watch yo"];
        }
        if (count == 33) {
            textLabel.text = [NSString stringWithFormat:@"I'm going to go train some more, so watch you"];
        }
        if (count == 34) {
            textLabel.text = [NSString stringWithFormat:@"I'm going to go train some more, so watch your"];
        }
        if (count == 35) {
            textLabel.text = [NSString stringWithFormat:@"I'm going to go train some more, so watch your b"];
        }
        if (count == 36) {
            textLabel.text = [NSString stringWithFormat:@"I'm going to go train some more, so watch your ba"];
        }
        if (count == 37) {
            textLabel.text = [NSString stringWithFormat:@"I'm going to go train some more, so watch your bac"];
        }
        if (count == 38) {
            textLabel.text = [NSString stringWithFormat:@"I'm going to go train some more, so watch your back"];
        }
        if (count == 39) {
            textLabel.text = [NSString stringWithFormat:@"I'm going to go train some more, so watch your back."];
        }
        if (count == 79) {
            step = 11;
            count = 0;
        }


    }
    if (step == 11) {
        if (count == 1) {
            textLabel.text = [NSString stringWithFormat:@"O"];
        }
        if (count == 2) {
            textLabel.text = [NSString stringWithFormat:@"Oh"];
        }
        if (count == 3) {
            textLabel.text = [NSString stringWithFormat:@"Oh y"];
        }
        if (count == 4) {
            textLabel.text = [NSString stringWithFormat:@"Oh ye"];
        }
        if (count == 5) {
            textLabel.text = [NSString stringWithFormat:@"Oh yea"];
        }
        if (count == 6) {
            textLabel.text = [NSString stringWithFormat:@"Oh yeah"];
        }
        if (count == 7) {
            textLabel.text = [NSString stringWithFormat:@"Oh yeah."];
        }
        if (count == 8) {
            textLabel.text = [NSString stringWithFormat:@"Oh yeah.."];
        }
        if (count == 9) {
            textLabel.text = [NSString stringWithFormat:@"Oh yeah..."];
        }
        if (count == 39) {
            step = 12;
            count = 0;
        }

    }
    if (step == 12) {
        if (count == 1) {
            textLabel.text = [NSString stringWithFormat:@"C"];
        }
        if (count == 2) {
            textLabel.text = [NSString stringWithFormat:@"Co"];
        }
        if (count == 3) {
            textLabel.text = [NSString stringWithFormat:@"Con"];
        }
        if (count == 4) {
            textLabel.text = [NSString stringWithFormat:@"Cong"];
        }
        if (count == 5) {
            textLabel.text = [NSString stringWithFormat:@"Congr"];
        }
        if (count == 6) {
            textLabel.text = [NSString stringWithFormat:@"Congra"];
        }
        if (count == 7) {
            textLabel.text = [NSString stringWithFormat:@"Congrat"];
        }
        if (count == 8) {
            textLabel.text = [NSString stringWithFormat:@"Congratu"];
        }
        if (count == 9) {
            textLabel.text = [NSString stringWithFormat:@"Congratul"];
        }
        if (count == 10) {
            textLabel.text = [NSString stringWithFormat:@"Congratula"];
        }
        if (count == 11) {
            textLabel.text = [NSString stringWithFormat:@"Congratulat"];
        }
        if (count == 12) {
            textLabel.text = [NSString stringWithFormat:@"Congratulati"];
        }
        if (count == 13) {
            textLabel.text = [NSString stringWithFormat:@"Congratulatio"];
        }
        if (count == 14) {
            textLabel.text = [NSString stringWithFormat:@"Congratulation"];
        }
        if (count == 15) {
            textLabel.text = [NSString stringWithFormat:@"Congratulations :"];
        }
        if (count == 16) {
            textLabel.text = [NSString stringWithFormat:@"Congratulations :)"];
        }
        if (count == 56) {
            step = 13;
            count = 0;
        }
    

    }
    if (step == 13) {
        if (count == 1) {
            blazeBox.hidden = TRUE;
            textLabel.text = [NSString stringWithFormat:@""];
            
            [UIView beginAnimations:nil context:NULL];     
            [UIView setAnimationDuration:1];
            [UIView setAnimationRepeatCount:1];
            [UIView setAnimationRepeatAutoreverses:NO];
            CGPoint position = CGPointMake(414.0f, 202.0f);
            blaze.center = position;
            [UIView commitAnimations];
        }
        if (count == 21) {
             textLabel.textColor = [UIColor blackColor];
            [UIView beginAnimations:nil context:NULL];     
            [UIView setAnimationDuration:1];
            [UIView setAnimationRepeatCount:1];
            [UIView setAnimationRepeatAutoreverses:NO];
            CGPoint position = CGPointMake(150.0f, 202.0f);
            slideMaster.center = position;
            [UIView commitAnimations];

        }
        if (count == 41) {
            slideMasterBox.hidden = FALSE;
            step = 14;
            count = 0;
        }

    }
    if (step == 14) {
        if (count == 1) {
            textLabel.text = [NSString stringWithFormat:@"Y"];
        }
        if (count == 2) {
            textLabel.text = [NSString stringWithFormat:@"Yo"];
        }
        if (count == 3) {
            textLabel.text = [NSString stringWithFormat:@"You"];
        }
        if (count == 4) {
            textLabel.text = [NSString stringWithFormat:@"You h"];
        }
        if (count == 5) {
            textLabel.text = [NSString stringWithFormat:@"You ha"];
        }
        if (count == 6) {
            textLabel.text = [NSString stringWithFormat:@"You hav"];
        }
        if (count == 7) {
            textLabel.text = [NSString stringWithFormat:@"You have"];
        }
        if (count == 8) {
            textLabel.text = [NSString stringWithFormat:@"You have b"];
        }
        if (count == 9) {
            textLabel.text = [NSString stringWithFormat:@"You have be"];
        }
        if (count == 10) {
            textLabel.text = [NSString stringWithFormat:@"You have bec"];
        }
        if (count == 11) {
            textLabel.text = [NSString stringWithFormat:@"You have beco"];
        }
        if (count == 12) {
            textLabel.text = [NSString stringWithFormat:@"You have becom"];
        }
        if (count == 13) {
            textLabel.text = [NSString stringWithFormat:@"You have become"];
        }
        if (count == 14) {
            textLabel.text = [NSString stringWithFormat:@"You have become v"];
        }
        if (count == 15) {
            textLabel.text = [NSString stringWithFormat:@"You have become ve"];
        }
        if (count == 16) {
            textLabel.text = [NSString stringWithFormat:@"You have become ver"];
        }
        if (count == 17) {
            textLabel.text = [NSString stringWithFormat:@"You have become very"];
        }
        if (count == 18) {
            textLabel.text = [NSString stringWithFormat:@"You have become very s"];
        }
        if (count == 19) {
            textLabel.text = [NSString stringWithFormat:@"You have become very sk"];
        }
        if (count == 20) {
            textLabel.text = [NSString stringWithFormat:@"You have become very ski"];
        }
        if (count == 21) {
            textLabel.text = [NSString stringWithFormat:@"You have become very skil"];
        }
        if (count == 22) {
            textLabel.text = [NSString stringWithFormat:@"You have become very skill"];
        }
        if (count == 23) {
            textLabel.text = [NSString stringWithFormat:@"You have become very skillf"];
        }
        if (count == 24) {
            textLabel.text = [NSString stringWithFormat:@"You have become very skillfu"];
        }
        if (count == 25) {
            textLabel.text = [NSString stringWithFormat:@"You have become very skillful"];
        }
        if (count == 26) {
            textLabel.text = [NSString stringWithFormat:@"You have become very skillful i"];
        }
        if (count == 27) {
            textLabel.text = [NSString stringWithFormat:@"You have become very skillful in"];
        }
        if (count == 28) {
            textLabel.text = [NSString stringWithFormat:@"You have become very skillful in t"];
        }
        if (count == 29) {
            textLabel.text = [NSString stringWithFormat:@"You have become very skillful in th"];
        }
        if (count == 30) {
            textLabel.text = [NSString stringWithFormat:@"You have become very skillful in the"];
        }
        if (count == 31) {
            textLabel.text = [NSString stringWithFormat:@"You have become very skillful in the s"];
        }
        if (count == 32) {
            textLabel.text = [NSString stringWithFormat:@"You have become very skillful in the sl"];
        }
        if (count == 33) {
            textLabel.text = [NSString stringWithFormat:@"You have become very skillful in the sli"];
        }
        if (count == 34) {
            textLabel.text = [NSString stringWithFormat:@"You have become very skillful in the slid"];
        }
        if (count == 35) {
            textLabel.text = [NSString stringWithFormat:@"You have become very skillful in the slidi"];
        }
        if (count == 36) {
            textLabel.text = [NSString stringWithFormat:@"You have become very skillful in the slidin"];
        }
        if (count == 37) {
            textLabel.text = [NSString stringWithFormat:@"You have become very skillful in the sliding"];
        }
        if (count == 38) {
            textLabel.text = [NSString stringWithFormat:@"You have become very skillful in the sliding a"];
        }
        if (count == 38) {
            textLabel.text = [NSString stringWithFormat:@"You have become very skillful in the sliding ar"];
        }
        if (count == 39) {
            textLabel.text = [NSString stringWithFormat:@"You have become very skillful in the sliding art"];
        }
        if (count == 40) {
            textLabel.text = [NSString stringWithFormat:@"You have become very skillful in the sliding art."];
        }
        if (count == 41) {
            textLabel.text = [NSString stringWithFormat:@"You have become very skillful in the sliding art.."];
        }
        if (count == 42) {
            textLabel.text = [NSString stringWithFormat:@"You have become very skillful in the sliding art..."];
        }
        if (count == 82) {
            step = 15;
            count = 0;
        }

    }
    if (step == 15) {
        if (count == 1) {
            textLabel.text = [NSString stringWithFormat:@"B"];
        }
        if (count == 2) {
            textLabel.text = [NSString stringWithFormat:@"Bu"];
        }
        if (count == 3) {
            textLabel.text = [NSString stringWithFormat:@"But"];
        }
        if (count == 4) {
            textLabel.text = [NSString stringWithFormat:@"But y"];
        }
        if (count == 5) {
            textLabel.text = [NSString stringWithFormat:@"But yo"];
        }
        if (count == 6) {
            textLabel.text = [NSString stringWithFormat:@"But you"];
        }
        if (count == 7) {
            textLabel.text = [NSString stringWithFormat:@"But you d"];
        }
        if (count == 8) {
            textLabel.text = [NSString stringWithFormat:@"But you do"];
        }
        if (count == 9) {
            textLabel.text = [NSString stringWithFormat:@"But you don"];
        }
        if (count == 10) {
            textLabel.text = [NSString stringWithFormat:@"But you don't."];
        }
        if (count == 11) {
            textLabel.text = [NSString stringWithFormat:@"But you don't k"];
        }
        if (count == 12) {
            textLabel.text = [NSString stringWithFormat:@"But you don't kn"];
        }
        if (count == 13) {
            textLabel.text = [NSString stringWithFormat:@"But you don't kno"];
        }
        if (count == 14) {
            textLabel.text = [NSString stringWithFormat:@"But you don't know"];
        }
        if (count == 15) {
            textLabel.text = [NSString stringWithFormat:@"But you don't know e"];
        }
        if (count == 16) {
            textLabel.text = [NSString stringWithFormat:@"But you don't know ev"];
        }
        if (count == 17) {
            textLabel.text = [NSString stringWithFormat:@"But you don't know eve"];
        }
        if (count == 18) {
            textLabel.text = [NSString stringWithFormat:@"But you don't know ever"];
        }
        if (count == 19) {
            textLabel.text = [NSString stringWithFormat:@"But you don't know every"];
        }
        if (count == 20) {
            textLabel.text = [NSString stringWithFormat:@"But you don't know everyt"];
        }
        if (count == 21) {
            textLabel.text = [NSString stringWithFormat:@"But you don't know everyth"];
        }
        if (count == 22) {
            textLabel.text = [NSString stringWithFormat:@"But you don't know everythi"];
        }
        if (count == 23) {
            textLabel.text = [NSString stringWithFormat:@"But you don't know everythin"];
        }
        if (count == 24) {
            textLabel.text = [NSString stringWithFormat:@"But you don't know everything"];
        }
        if (count == 25) {
            textLabel.text = [NSString stringWithFormat:@"But you don't know everything."];
        }
        if (count == 65) {
            step = 16;
            count = 0;
        }



    }
    if (step == 16) {
        if (count == 1) {
            textLabel.text = [NSString stringWithFormat:@"Y"];
        }
        if (count == 2) {
            textLabel.text = [NSString stringWithFormat:@"Yo"];
        }
        if (count == 3) {
            textLabel.text = [NSString stringWithFormat:@"You"];
        }
        if (count == 4) {
            textLabel.text = [NSString stringWithFormat:@"Your"];
        }
        if (count == 5) {
            textLabel.text = [NSString stringWithFormat:@"Your j"];
        }
        if (count == 6) {
            textLabel.text = [NSString stringWithFormat:@"Your jo"];
        }
        if (count == 7) {
            textLabel.text = [NSString stringWithFormat:@"Your jou"];
        }
        if (count == 8) {
            textLabel.text = [NSString stringWithFormat:@"Your jour"];
        }
        if (count == 9) {
            textLabel.text = [NSString stringWithFormat:@"Your journ"];
        }
        if (count == 10) {
            textLabel.text = [NSString stringWithFormat:@"Your journe"];
        }
        if (count == 12) {
            textLabel.text = [NSString stringWithFormat:@"Your journey"];
        }
        if (count == 13) {
            textLabel.text = [NSString stringWithFormat:@"Your journey c"];
        }
        if (count == 14) {
            textLabel.text = [NSString stringWithFormat:@"Your journey co"];
        }
        if (count == 15) {
            textLabel.text = [NSString stringWithFormat:@"Your journey con"];
        }
        if (count == 16) {
            textLabel.text = [NSString stringWithFormat:@"Your journey cont"];
        }
        if (count == 17) {
            textLabel.text = [NSString stringWithFormat:@"Your journey conti"];
        }
        if (count == 18) {
            textLabel.text = [NSString stringWithFormat:@"Your journey contin"];
        }
        if (count == 19) {
            textLabel.text = [NSString stringWithFormat:@"Your journey continu"];
        }
        if (count == 20) {
            textLabel.text = [NSString stringWithFormat:@"Your journey continue"];
        }
        if (count == 21) {
            textLabel.text = [NSString stringWithFormat:@"Your journey continues"];
        }
        if (count == 22) {
            textLabel.text = [NSString stringWithFormat:@"Your journey continues i"];
        }
        if (count == 23) {
            textLabel.text = [NSString stringWithFormat:@"Your journey continues in"];
        }
        if (count == 24) {
            textLabel.text = [NSString stringWithFormat:@"Your journey continues in F"];
        }
        if (count == 25) {
            textLabel.text = [NSString stringWithFormat:@"Your journey continues in Fl"];
        }
        if (count == 26) {
            textLabel.text = [NSString stringWithFormat:@"Your journey continues in Fle"];
        }
        if (count == 27) {
            textLabel.text = [NSString stringWithFormat:@"Your journey continues in Flex"];
        }
        if (count == 28) {
            textLabel.text = [NSString stringWithFormat:@"Your journey continues in Flex M"];
        }
        if (count == 29) {
            textLabel.text = [NSString stringWithFormat:@"Your journey continues in Flex Mo"];
        }
        if (count == 30) {
            textLabel.text = [NSString stringWithFormat:@"Your journey continues in Flex Mod"];
        }
        if (count == 31) {
            textLabel.text = [NSString stringWithFormat:@"Your journey continues in Flex Mode"];
        }
        if (count == 32) {
            textLabel.text = [NSString stringWithFormat:@"Your journey continues in Flex Mode."];
        }
        if (count == 72) {
            step = 17;
            count = 0;
        }


    }
    if (step == 17) {
        if (count == 1) {
            textLabel.text = [NSString stringWithFormat:@"I"];
        }
        if (count == 2) {
            textLabel.text = [NSString stringWithFormat:@"I h"];
        }
        if (count == 3) {
            textLabel.text = [NSString stringWithFormat:@"I ha"];
        }
        if (count == 4) {
            textLabel.text = [NSString stringWithFormat:@"I hav"];
        }
        if (count == 5) {
            textLabel.text = [NSString stringWithFormat:@"I have"];
        }
        if (count == 6) {
            textLabel.text = [NSString stringWithFormat:@"I have m"];
        }
        if (count == 7) {
            textLabel.text = [NSString stringWithFormat:@"I have ma"];
        }
        if (count == 8) {
            textLabel.text = [NSString stringWithFormat:@"I have man"];
        }
        if (count == 9) {
            textLabel.text = [NSString stringWithFormat:@"I have many"];
        }
        if (count == 10) {
            textLabel.text = [NSString stringWithFormat:@"I have many r"];
        }
        if (count == 11) {
            textLabel.text = [NSString stringWithFormat:@"I have many re"];
        }
        if (count == 12) {
            textLabel.text = [NSString stringWithFormat:@"I have many rew"];
        }
        if (count == 13) {
            textLabel.text = [NSString stringWithFormat:@"I have many rewa"];
        }
        if (count == 14) {
            textLabel.text = [NSString stringWithFormat:@"I have many rewar"];
        }
        if (count == 15) {
            textLabel.text = [NSString stringWithFormat:@"I have many reward"];
        }
        if (count == 16) {
            textLabel.text = [NSString stringWithFormat:@"I have many rewards"];
        }
        if (count == 17) {
            textLabel.text = [NSString stringWithFormat:@"I have many rewards f"];
        }
        if (count == 18) {
            textLabel.text = [NSString stringWithFormat:@"I have many rewards fo"];
        }
        if (count == 19) {
            textLabel.text = [NSString stringWithFormat:@"I have many rewards for"];
        }
        if (count == 20) {
            textLabel.text = [NSString stringWithFormat:@"I have many rewards for y"];
        }
        if (count == 21) {
            textLabel.text = [NSString stringWithFormat:@"I have many rewards for yo"];
        }
        if (count == 22) {
            textLabel.text = [NSString stringWithFormat:@"I have many rewards for you"];
        }
        if (count == 23) {
            textLabel.text = [NSString stringWithFormat:@"I have many rewards for you a"];
        }
        if (count == 24) {
            textLabel.text = [NSString stringWithFormat:@"I have many rewards for you al"];
        }
        if (count == 25) {
            textLabel.text = [NSString stringWithFormat:@"I have many rewards for you alo"];
        }
        if (count == 26) {
            textLabel.text = [NSString stringWithFormat:@"I have many rewards for you alon"];
        }
        if (count == 27) {
            textLabel.text = [NSString stringWithFormat:@"I have many rewards for you along"];
        }
        if (count == 28) {
            textLabel.text = [NSString stringWithFormat:@"I have many rewards for you along t"];
        }
        if (count == 29) {
            textLabel.text = [NSString stringWithFormat:@"I have many rewards for you along th"];;
        }
        if (count == 30) {
            textLabel.text = [NSString stringWithFormat:@"I have many rewards for you along the"];
        }
        if (count == 31) {
            textLabel.text = [NSString stringWithFormat:@"I have many rewards for you along the w"];
        }
        if (count == 32) {
            textLabel.text = [NSString stringWithFormat:@"I have many rewards for you along the wa"];
        }
        if (count == 33) {
            textLabel.text = [NSString stringWithFormat:@"I have many rewards for you along the way"];
        }
        if (count == 34) {
            textLabel.text = [NSString stringWithFormat:@"I have many rewards for you along the way."];
        }
        if (count == 74) {
            step = 18;
            count = 0;
        }


    }
    if (step == 18) {
        if (count == 1) {
            textLabel.text = [NSString stringWithFormat:@"G"];
        }
        if (count == 2) {
            textLabel.text = [NSString stringWithFormat:@"Go"];
        }
        if (count == 3) {
            textLabel.text = [NSString stringWithFormat:@"Goo"];
        }
        if (count == 4) {
            textLabel.text = [NSString stringWithFormat:@"Good"];
        }
        if (count == 5) {
            textLabel.text = [NSString stringWithFormat:@"Good b"];
        }
        if (count == 6) {
            textLabel.text = [NSString stringWithFormat:@"Good by"];
        }
        if (count == 7) {
            textLabel.text = [NSString stringWithFormat:@"Good bye"];
        }
        if (count == 8) {
            textLabel.text = [NSString stringWithFormat:@"Good bye S"];
        }
        if (count == 9) {
            textLabel.text = [NSString stringWithFormat:@"Good bye Sl"];
        }
        if (count == 10) {
            textLabel.text = [NSString stringWithFormat:@"Good bye Sli"];
        }
        if (count == 11) {
            textLabel.text = [NSString stringWithFormat:@"Good bye Slid"];
        }
        if (count == 12) {
            textLabel.text = [NSString stringWithFormat:@"Good bye Slide"];
        }
        if (count == 13) {
            textLabel.text = [NSString stringWithFormat:@"Good bye Slide M"];
        }
        if (count == 14) {
            textLabel.text = [NSString stringWithFormat:@"Good bye Slide Ma"];
        }
        if (count == 15) {
            textLabel.text = [NSString stringWithFormat:@"Good bye Slide Mas"];
        }
        if (count == 16) {
            textLabel.text = [NSString stringWithFormat:@"Good bye Slide Mast"];
        }
        if (count == 17) {
            textLabel.text = [NSString stringWithFormat:@"Good bye Slide Maste"];
        }
        if (count == 18) {
            textLabel.text = [NSString stringWithFormat:@"Good bye Slide Master"];
        }
        if (count == 19) {
            textLabel.text = [NSString stringWithFormat:@"Good bye Slide Master,"];
        }
        if (count == 20) {
            textLabel.text = [NSString stringWithFormat:@"Good bye Slide Master, I"];
        }
        if (count == 21) {
            textLabel.text = [NSString stringWithFormat:@"Good bye Slide Master, I h"];
        }
        if (count == 22) {
            textLabel.text = [NSString stringWithFormat:@"Good bye Slide Master, I ho"];
        }
        if (count == 23) {
            textLabel.text = [NSString stringWithFormat:@"Good bye Slide Master, I hop"];
        }
        if (count == 24) {
            textLabel.text = [NSString stringWithFormat:@"Good bye Slide Master, I hope"];
        }
        if (count == 25) {
            textLabel.text = [NSString stringWithFormat:@"Good bye Slide Master, I hope t"];
        }
        if (count == 26) {
            textLabel.text = [NSString stringWithFormat:@"Good bye Slide Master, I hope to"];
        }
        if (count == 27) {
            textLabel.text = [NSString stringWithFormat:@"Good bye Slide Master, I hope to se"];
        }
        if (count == 28) {
            textLabel.text = [NSString stringWithFormat:@"Good bye Slide Master, I hope to see"];
        }
        if (count == 29) {
            textLabel.text = [NSString stringWithFormat:@"Good bye Slide Master, I hope to see y"];
        }
        if (count == 30) {
            textLabel.text = [NSString stringWithFormat:@"Good bye Slide Master, I hope to see yo"];
        }
        if (count == 31) {
            textLabel.text = [NSString stringWithFormat:@"Good bye Slide Master, I hope to see you"];
        }
        if (count == 32) {
            textLabel.text = [NSString stringWithFormat:@"Good bye Slide Master, I hope to see you a"];
        }
        if (count == 33) {
            textLabel.text = [NSString stringWithFormat:@"Good bye Slide Master, I hope to see you ag"];
        }
        if (count == 34) {
            textLabel.text = [NSString stringWithFormat:@"Good bye Slide Master, I hope to see you aga"];
        }
        if (count == 35) {
            textLabel.text = [NSString stringWithFormat:@"Good bye Slide Master, I hope to see you agai"];
        }
        if (count == 36) {
            textLabel.text = [NSString stringWithFormat:@"Good bye Slide Master, I hope to see you again"];
        }
        if (count == 37) {
            textLabel.text = [NSString stringWithFormat:@"Good bye Slide Master, I hope to see you again."];
        }
        if (count == 77) {
            slidemastersAppDelegate *appDelegate = (slidemastersAppDelegate *)[[UIApplication sharedApplication] delegate];
            [appDelegate stopMusic];
            [appDelegate qMusic];
            
            FinalStage *Sword = [[FinalStage alloc] initWithNibName:nil bundle:nil];
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
    if (canSound == 0){
        slidemastersAppDelegate *appDelegate = (slidemastersAppDelegate *)[[UIApplication sharedApplication] delegate];
        [appDelegate qStoryMusic];
    }

    
    blazeBox.hidden = TRUE;
    slideMasterBox.hidden = TRUE;
    step = 1;
    timer = [NSTimer scheduledTimerWithTimeInterval:.05 target:self selector:@selector(counting) userInfo:nil repeats:YES];
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
